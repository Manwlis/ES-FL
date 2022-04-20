#include "computation_unit.hpp"
#define NPY_NO_DEPRECATED_API NPY_1_7_API_VERSION // suppress numpy version warnings
#include </home/epetrakos/.local/lib/python3.10/site-packages/numpy/core/include/numpy/arrayobject.h>

Computation_unit::Computation_unit( Server_to_client_msg* input_message , Client_to_server_msg* output_message )
	: m_input_message( input_message ) , m_output_message( output_message )
{ }

Computation_unit::~Computation_unit(){}

Python_with_TF::Python_with_TF( Server_to_client_msg* input_message , Client_to_server_msg* output_message , int argc , char** argv )
	: Computation_unit( input_message , output_message ) , m_py_flags( nullptr ) , m_py_epoch( nullptr ) // nullptr to supress warning 'may be used uninitialized in dealloc()'
{
	// Initialize python interpeter
	LOGGING( Logger::Level::initialization , "Initializing python interpeter." );
	Py_SetProgramName( Py_DecodeLocale( argv[0] , nullptr ) );
	Py_Initialize();

	// Pass program arguments to interpeter
	wchar_t** wchar_argv = (wchar_t**) PyMem_Malloc( sizeof(wchar_t*)* argc );
	for ( int i = 0 ; i < argc ; i++ )
		wchar_argv[i] = Py_DecodeLocale( argv[i] , nullptr );
	PySys_SetArgv( argc , wchar_argv );
	PyMem_FREE( wchar_argv );

	// look in nn directory for importing modules
	PyObject* sys = PyImport_ImportModule( "sys" );
	PyObject* path = PyObject_GetAttrString( sys , "path" );
	PyList_Append( path , PyUnicode_FromString( "./nn" ) );
	Py_DECREF( sys );
	Py_DECREF( path );

	// get module
	LOGGING( Logger::Level::initialization , "Getting file." );
	PyObject* py_module_name = PyUnicode_FromString( py_script );
	PyObject* py_module = PyImport_Import( py_module_name ); // this executes code in module outside functions!
	if ( py_module == nullptr )
	{
		PyErr_Print();
		LOGGING( Logger::Level::error , "Importing python file failed." );
		exit( EXIT_FAILURE );
	}
	Py_DECREF( py_module_name );

	// pass C macros and constants to module 
	LOGGING( Logger::Level::initialization , "Passing constants." );
	PyModule_AddIntMacro( py_module , LOCAL_EPOCHS );
	PyModule_AddIntMacro( py_module , STEPS_PER_EPOCH );
	PyModule_AddIntMacro( py_module , BATCH_SIZE );

	PyModule_AddStringMacro( py_module , OPTIMIZER );
	PyModule_AddStringMacro( py_module , LEARNING_RATE_INITIAL );
	PyModule_AddStringMacro( py_module , MOMENTUM );
	PyModule_AddIntMacro( py_module , LEARNING_RATE_DECAY_FLAG );
	PyModule_AddStringMacro( py_module , LEARNING_RATE_DECAY );
	PyModule_AddIntMacro( py_module , LEARNING_RATE_DECAY_PERIOD );

	PyModule_AddStringMacro( py_module , MODEL );
	PyModule_AddIntConstant( py_module , "no_pretrained_model_flag" , Server_to_client_msg::flag::no_pretrained_model );

	// get functions
	LOGGING( Logger::Level::initialization , "Getting functions." );

	PyObject* py_data = PyObject_GetAttrString( py_module , py_data_function );
	PyObject* py_compile = PyObject_GetAttrString( py_module , py_compile_function );

	m_py_train = PyObject_GetAttrString( py_module , py_train_function );
	m_py_eval = PyObject_GetAttrString( py_module , py_eval_function );
	m_py_shuffle_data = PyObject_GetAttrString( py_module , py_shuffle_data_function );
	m_py_print_accuracy_history = PyObject_GetAttrString( py_module , "print_accuracy_history" );

	Py_DECREF( py_module );

	// set up data and compile model
	LOGGING( Logger::Level::initialization , "Setting up data and neural network." );
	m_num_examples = PyLong_AsUnsignedLong( PyObject_CallFunctionObjArgs( py_data , NULL ) );
	PyObject_CallFunctionObjArgs( py_compile , NULL );
	Py_DECREF( py_data );
	Py_DECREF( py_compile );

	// create numpy array metadata around C arrays to pass them to python code
	_import_array();
	npy_intp dims[1] = {VARIABLES_NUM}; // dimension/size of numpy arrays. Easier to pass an 1-D array to python and reshape data there.
	m_py_array_input = PyArray_SimpleNewFromData( 1 , dims , NPY_FLOAT , m_input_message->variables );
	m_py_array_output = PyArray_SimpleNewFromData( 1 , dims , NPY_FLOAT , m_output_message->variables );
}

Python_with_TF::~Python_with_TF( )
{
	Py_DECREF( m_py_train );
	Py_DECREF( m_py_eval );
	Py_DECREF( m_py_shuffle_data );
	Py_DECREF( m_py_print_accuracy_history );
	Py_DECREF( m_py_array_input );
	Py_DECREF( m_py_array_output );
	Py_XDECREF( m_py_flags ); // m_py_flags gets initialised in train(). If train() never gets called, it may be NULL.
	Py_XDECREF( m_py_epoch ); // m_py_epoch gets initialised in train(). If train() never gets called, it may be NULL.

	Py_Finalize();
}

void Python_with_TF::train()
{
	// pass metadata of the message to python
	m_py_flags = (PyLongObject*) PyLong_FromLong( (long) m_input_message->flags );
	m_py_epoch = (PyLongObject*) PyLong_FromLong( (long) m_input_message->epoch );

	// call python function
	PyObject_CallFunctionObjArgs( m_py_train , m_py_array_input , m_py_array_output , m_py_flags , m_py_epoch , NULL );

	PyErr_Print();
}

void Python_with_TF::evaluate()
{
	LOGGING( Logger::Level::fl_info , "Evaluating model" );

	// pass metadata of the message to python
	m_py_epoch = (PyLongObject*) PyLong_FromLong( (long) m_input_message->epoch ); // for logging

	PyObject_CallFunctionObjArgs( m_py_eval , m_py_array_input , m_py_epoch , NULL );

	PyErr_Print();
}

void Python_with_TF::shuffle_data() const
{
	PyObject_CallFunctionObjArgs( m_py_shuffle_data , NULL );
}

void Python_with_TF::print_accuracy_history() const
{
	PyObject_CallFunctionObjArgs( m_py_print_accuracy_history , NULL );
}