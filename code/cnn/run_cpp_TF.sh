#!/usr/bin/env bash
#

# delete previous results
rm -r TF/activations
rm -r TF/output_gradients
rm -r TF/variable_gradients
rm -r TF/variables
rm -r cpp/activations
rm -r cpp/output_gradients
rm -r cpp/variable_gradients
rm -r cpp/variables

# Create directories
mkdir --parents TF/temp
mkdir --parents TF/activations
mkdir --parents TF/output_gradients
mkdir --parents TF/variable_gradients
mkdir --parents TF/variables

# Generate golden results
python3 cnn.py

# Generate folders and files required by the C++ program
cp -r TF/temp cpp/temp
mkdir --parents cpp/activations
mkdir --parents cpp/output_gradients
mkdir --parents cpp/variable_gradients
mkdir --parents cpp/variables

# Compile
g++ -Wall -Wno-unknown-pragmas cnn.cpp -o temp/cnn

# Execute
./temp/cnn

# Compare results
flags='--brief --report-identical-files --ignore-all-space'

echo -e "\n~~~~~~~~~~~~~~~ Activations ~~~~~~~~~~~~~~\n"
diff ${flags} TF/activations/l0_conv16_tf.txt	cpp/activations/l0_conv16_cpp.txt

echo ""
diff ${flags} TF/activations/l1_maxp16_tf.txt	cpp/activations/l1_maxp16_cpp.txt

echo ""
diff ${flags} TF/activations/l2_conv32_tf.txt	cpp/activations/l2_conv32_cpp.txt

echo ""
diff ${flags} TF/activations/l3_maxp32_tf.txt	cpp/activations/l3_maxp32_cpp.txt

echo ""
diff ${flags} TF/activations/l4_dense_tf.txt	cpp/activations/l4_dense_cpp.txt

echo ""
diff ${flags} TF/activations/l5_softmax_tf.txt	cpp/activations/l5_softmax_cpp.txt

echo -e "\n~~~~~~~~~~~~ Output Gradients ~~~~~~~~~~~~\n"
diff ${flags} TF/output_gradients/l4_dense_tf.txt	cpp/output_gradients/l4_dense_cpp.txt

echo ""
diff ${flags} TF/output_gradients/l3_maxp32_tf.txt	cpp/output_gradients/l3_maxp32_cpp.txt

echo ""
diff ${flags} TF/output_gradients/l2_conv32_tf.txt	cpp/output_gradients/l2_conv32_cpp.txt

echo ""
diff ${flags} TF/output_gradients/l1_maxp16_tf.txt	cpp/output_gradients/l1_maxp16_cpp.txt

echo ""
diff ${flags} TF/output_gradients/l0_conv16_tf.txt	cpp/output_gradients/l0_conv16_cpp.txt

echo -e "\n~~~~~~~~~~~ Variable Gradients ~~~~~~~~~~~\n"
diff ${flags} TF/variable_gradients/l5_weights_tf.txt	cpp/variable_gradients/l5_weights_cpp.txt

echo ""
diff ${flags} TF/variable_gradients/l5_biases_tf.txt	cpp/variable_gradients/l5_biases_cpp.txt

echo ""
diff ${flags} TF/variable_gradients/l4_weights_tf.txt	cpp/variable_gradients/l4_weights_cpp.txt

echo ""
diff ${flags} TF/variable_gradients/l4_biases_tf.txt	cpp/variable_gradients/l4_biases_cpp.txt

echo ""
diff ${flags} TF/variable_gradients/l2_weights_tf.txt	cpp/variable_gradients/l2_weights_cpp.txt

echo ""
diff ${flags} TF/variable_gradients/l2_biases_tf.txt	cpp/variable_gradients/l2_biases_cpp.txt

echo ""
diff ${flags} TF/variable_gradients/l0_weights_tf.txt	cpp/variable_gradients/l0_weights_cpp.txt

echo ""
diff ${flags} TF/variable_gradients/l0_biases_tf.txt	cpp/variable_gradients/l0_biases_cpp.txt

echo -e "\n~~~~~~~~~~~ Updated Variables ~~~~~~~~~~~~\n"
diff ${flags} TF/variables/l5_weights_tf.txt	cpp/variables/l5_weights_cpp.txt

echo ""
diff ${flags} TF/variables/l5_biases_tf.txt		cpp/variables/l5_biases_cpp.txt

echo ""
diff ${flags} TF/variables/l4_weights_tf.txt	cpp/variables/l4_weights_cpp.txt

echo ""
diff ${flags} TF/variables/l4_biases_tf.txt		cpp/variables/l4_biases_cpp.txt

echo ""
diff ${flags} TF/variables/l2_weights_tf.txt	cpp/variables/l2_weights_cpp.txt

echo ""
diff ${flags} TF/variables/l2_biases_tf.txt		cpp/variables/l2_biases_cpp.txt

echo ""
diff ${flags} TF/variables/l0_weights_tf.txt	cpp/variables/l0_weights_cpp.txt

echo ""
diff ${flags} TF/variables/l0_biases_tf.txt		cpp/variables/l0_biases_cpp.txt

# clean up temporary files
# rm -r TF/temp cpp/temp
