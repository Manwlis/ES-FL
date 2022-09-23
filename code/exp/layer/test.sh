#!/usr/bin/env bash
# 

# Create temp directory
mkdir temp

# Generate golden results
python3 cnn.py

# Compile
g++ -Wall cnn.cpp -o temp/cnn

# Execute
./temp/cnn

# Compare results

echo ""
diff --brief --report-identical-files --ignore-all-space output/l0_conv32_tf.txt	output/l0_conv32_cpp.txt

echo ""
diff --brief --report-identical-files --ignore-all-space output/l1_maxp32_tf.txt	output/l1_maxp32_cpp.txt

echo ""
diff --brief --report-identical-files --ignore-all-space output/l2_conv64_tf.txt	output/l2_conv64_cpp.txt

echo ""
diff --brief --report-identical-files --ignore-all-space output/l3_maxp64_tf.txt	output/l3_maxp64_cpp.txt

echo ""
diff --brief --report-identical-files --ignore-all-space output/l4_dense_tf.txt		output/l4_dense_cpp.txt

echo ""
diff --brief --report-identical-files --ignore-all-space output/l5_softmax_tf.txt	output/l5_softmax_cpp.txt

echo ""
diff --brief --report-identical-files --ignore-all-space output/cnn_tf.txt			output/l5_softmax_cpp.txt

# clean up
rm -r temp
