#!/usr/bin/expect -f
# requires expect package

spawn xsct

expect ">>"
send "connect -host 127.0.0.1 -port 1440\n"

expect ">>"
send "tfile copy -to-host /run/media/mmcblk0p1/data/model.bin ~/ES-FL/code/cnn/vitis/host/variables/model.bin\n"

expect ">>"
send "tfile copy -to-host /run/media/mmcblk0p1/data/l0_biases_vitis.txt ~/ES-FL/code/cnn/vitis/host/variables/l0_biases_vitis.txt\n"

expect ">>"
send "tfile copy -to-host /run/media/mmcblk0p1/data/l2_biases_vitis.txt ~/ES-FL/code/cnn/vitis/host/variables/l2_biases_vitis.txt\n"

expect ">>"
send "tfile copy -to-host /run/media/mmcblk0p1/data/l4_biases_vitis.txt ~/ES-FL/code/cnn/vitis/host/variables/l4_biases_vitis.txt\n"

expect ">>"
send "tfile copy -to-host /run/media/mmcblk0p1/data/l5_biases_vitis.txt ~/ES-FL/code/cnn/vitis/host/variables/l5_biases_vitis.txt\n"

expect ">>"
send "tfile copy -to-host /run/media/mmcblk0p1/data/l0_weights_vitis.txt ~/ES-FL/code/cnn/vitis/host/variables/l0_weights_vitis.txt\n"

expect ">>"           
send "tfile copy -to-host /run/media/mmcblk0p1/data/l2_weights_vitis.txt ~/ES-FL/code/cnn/vitis/host/variables/l2_weights_vitis.txt\n"

expect ">>"
send "tfile copy -to-host /run/media/mmcblk0p1/data/l4_weights_vitis.txt ~/ES-FL/code/cnn/vitis/host/variables/l4_weights_vitis.txt\n"

expect ">>"
send "tfile copy -to-host /run/media/mmcblk0p1/data/l5_weights_vitis.txt ~/ES-FL/code/cnn/vitis/host/variables/l5_weights_vitis.txt\n"

expect ">>"
send "exit\n"
