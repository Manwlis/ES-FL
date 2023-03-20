#include "definitions.hpp"
#include "utils.hpp"

#define PY_SSIZE_T_CLEAN
#include <Python.h>

class Computation_unit
{
public:
	virtual void train() = 0;
	virtual void evaluate() = 0;

protected:
	// big chunks of data
	Server_to_client_msg* m_input_message;
	Client_to_server_msg* m_output_message;

	Computation_unit( Server_to_client_msg* input_message , Client_to_server_msg* output_message );
	virtual ~Computation_unit();
};

class Python_with_TF : Computation_unit
{
private:
	// remember to decref them when destroyed
	// python wrappers around C data
	PyObject* m_py_array_input;
	PyObject* m_py_array_output;
	PyLongObject* m_py_flags;
	PyLongObject* m_py_epoch;

	// python module and functions
	PyObject* m_py_train;
	PyObject* m_py_eval;
	PyObject* m_py_print_accuracy_history;

public:
	unsigned long m_num_examples;

	Python_with_TF( Server_to_client_msg* input_message , Client_to_server_msg* output_message , int argc ,  char** argv );
	~Python_with_TF();

	void train();
	void evaluate();
	void shuffle_data() const;

	void print_accuracy_history() const;
};