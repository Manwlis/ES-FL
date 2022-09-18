#!/usr/bin/env bash
# 

# Compile
g++ -Wall cnn.cpp -o cnn

# Execute
./cnn

# Generate golden results
python3 cnn.py

# Compare results

diff --brief --report-identical-files --ignore-all-space output/layer0_tf.txt	output/layer0_cpp.txt

echo ""
diff --brief --report-identical-files --ignore-all-space output/layer1_tf.txt	output/layer1_cpp.txt

echo ""
diff --brief --report-identical-files --ignore-all-space output/layer2_tf.txt	output/layer2_cpp.txt

echo ""
diff --brief --report-identical-files --ignore-all-space output/layer3_tf.txt	output/layer3_cpp.txt

echo ""
diff --brief --report-identical-files --ignore-all-space output/layer4_tf.txt	output/layer4_cpp.txt

echo ""
diff --brief --report-identical-files --ignore-all-space output/layer5_tf.txt	output/layer5_cpp.txt

echo ""
diff --brief --report-identical-files --ignore-all-space output/cnn_tf.txt		output/layer5_cpp.txt

# clean up
cleanup_files=(
	cnn
)
rm ${cleanup_files}
