#!/usr/bin/env bash
# 

# Create temp directory
mkdir --parents temp
mkdir --parents activations
mkdir --parents output_gradients
mkdir --parents variable_gradients
mkdir --parents variables
# Generate golden results
python3 cnn.py

# Compile
g++ -Wall -Wno-unknown-pragmas cnn.cpp -o temp/cnn

# Execute
./temp/cnn

# Compare results
flags='--brief --report-identical-files --ignore-all-space'
echo ""
echo "~~~~~~~~~~~~~~~ Activations ~~~~~~~~~~~~~~"
echo ""
diff ${flags} activations/l0_conv32_tf.txt	activations/l0_conv32_cpp.txt

echo ""
diff ${flags} activations/l1_maxp32_tf.txt	activations/l1_maxp32_cpp.txt

echo ""
diff ${flags} activations/l2_conv64_tf.txt	activations/l2_conv64_cpp.txt

echo ""
diff ${flags} activations/l3_maxp64_tf.txt	activations/l3_maxp64_cpp.txt

echo ""
diff ${flags} activations/l4_dense_tf.txt	activations/l4_dense_cpp.txt

echo ""
diff ${flags} activations/l5_softmax_tf.txt	activations/l5_softmax_cpp.txt

echo ""
echo "~~~~~~~~~~~~ Output Gradients ~~~~~~~~~~~~"
echo ""
diff ${flags} output_gradients/l4_dense_tf.txt	output_gradients/l4_dense_cpp.txt

echo ""
diff ${flags} output_gradients/l3_maxp64_tf.txt	output_gradients/l3_maxp64_cpp.txt

echo ""
echo "~~~~~~~~~~~ Variable Gradients ~~~~~~~~~~~"
echo ""
diff ${flags} variable_gradients/l5_weights_tf.txt	variable_gradients/l5_weights_cpp.txt

echo ""
diff ${flags} variable_gradients/l5_biases_tf.txt	variable_gradients/l5_biases_cpp.txt

echo ""
diff ${flags} variable_gradients/l4_weights_tf.txt	variable_gradients/l4_weights_cpp.txt

echo ""
diff ${flags} variable_gradients/l4_biases_tf.txt	variable_gradients/l4_biases_cpp.txt

echo ""
echo "~~~~~~~~~~~ Updated Variables ~~~~~~~~~~~~"
echo ""
diff ${flags} variables/l5_weights_tf.txt	variables/l5_weights_cpp.txt

echo ""
diff ${flags} variables/l5_biases_tf.txt	variables/l5_biases_cpp.txt

echo ""
diff ${flags} variables/l4_weights_tf.txt	variables/l4_weights_cpp.txt

echo ""
diff ${flags} variables/l4_biases_tf.txt	variables/l4_biases_cpp.txt

# clean up
rm -r temp
