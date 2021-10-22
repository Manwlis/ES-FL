#define PY_SSIZE_T_CLEAN
#define NPY_NO_DEPRECATED_API NPY_1_7_API_VERSION
#include <Python.h>
#include </home/epetrakos/.local/lib/python3.8/site-packages/numpy/core/include/numpy/arrayobject.h>
#include <iostream>		/* << */

#define Py_script "nn_tiny"
#define Py_function "train_nn"

using namespace std;


int main(int argc, char* argv[])
{
	static float data[2] = {2.3,3.0};

	PyObject *pName , *pModule , *pFunc;
	PyObject *pValue;

	// Initialize python interpeter and numpy
    Py_SetProgramName( (wchar_t*) argv[0] );
	Py_Initialize();
	_import_array();

	// look in current working directory for importing modules
	PyRun_SimpleString ("import os , sys; sys.path.insert( 0 , os.getcwd() );");

	// get file
	cout << "Getting file" << endl;
	pName = PyUnicode_FromString( Py_script );
	pModule = PyImport_Import( pName );
	Py_DECREF( pName );

	// get function
	cout << "Getting function" << endl;
	pFunc = PyObject_GetAttrString(pModule, Py_function );
	/* pFunc is a new reference */
	
	// call function
	cout << "Calling function" << endl;
	npy_intp dims[1] = {2};
	for( int i = 0 ; i < 25 ; i ++ )
	{
		pValue = PyObject_CallFunctionObjArgs( pFunc , PyArray_SimpleNewFromData( 1 , dims , NPY_FLOAT , data ) , NULL );
		cout << data[0] << " , " << data[1] << endl;
	}
	// free up stuff
	Py_DECREF( pValue );
	Py_XDECREF( pFunc );
	Py_DECREF( pModule );

	// close interpeter
	Py_FinalizeEx();

	return 0;
}