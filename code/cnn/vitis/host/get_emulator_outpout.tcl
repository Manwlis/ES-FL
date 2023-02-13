#!/usr/bin/expect -f
# requires expect package

spawn xsct

expect ">>"
send "connect -host 127.0.0.1 -port 1440\n"

expect ">>"
send "tfile copy -to-host /run/media/mmcblk0p1/xrt.run_summary /media/msi/SSD/vitis-workspace/cnn/emulator_reports/xrt.run_summary\n"

expect ">>"
send "tfile copy -to-host /run/media/mmcblk0p1/native_trace.csv /media/msi/SSD/vitis-workspace/cnn/emulator_reports/native_trace.csv\n"

expect ">>"
send "tfile copy -to-host /run/media/mmcblk0p1/summary.csv /media/msi/SSD/vitis-workspace/cnn/emulator_reports/summary.csv\n"

expect ">>"
send "tfile copy -to-host /run/media/mmcblk0p1/data/l0_biases_vitis.txt /home/msi/ES-FL/code/cnn/vitis/host/variables/l0_biases_vitis.txt\n"

expect ">>"
send "tfile copy -to-host /run/media/mmcblk0p1/data/l2_biases_vitis.txt /home/msi/ES-FL/code/cnn/vitis/host/variables/l2_biases_vitis.txt\n"

expect ">>"
send "tfile copy -to-host /run/media/mmcblk0p1/data/l4_biases_vitis.txt /home/msi/ES-FL/code/cnn/vitis/host/variables/l4_biases_vitis.txt\n"

expect ">>"
send "tfile copy -to-host /run/media/mmcblk0p1/data/l5_biases_vitis.txt /home/msi/ES-FL/code/cnn/vitis/host/variables/l5_biases_vitis.txt\n"

expect ">>"
send "tfile copy -to-host /run/media/mmcblk0p1/data/l0_weights_vitis.txt /home/msi/ES-FL/code/cnn/vitis/host/variables/l0_weights_vitis.txt\n"

expect ">>"           
send "tfile copy -to-host /run/media/mmcblk0p1/data/l2_weights_vitis.txt /home/msi/ES-FL/code/cnn/vitis/host/variables/l2_weights_vitis.txt\n"

expect ">>"
send "tfile copy -to-host /run/media/mmcblk0p1/data/l4_weights_vitis.txt /home/msi/ES-FL/code/cnn/vitis/host/variables/l4_weights_vitis.txt\n"

expect ">>"
send "tfile copy -to-host /run/media/mmcblk0p1/data/l5_weights_vitis.txt /home/msi/ES-FL/code/cnn/vitis/host/variables/l5_weights_vitis.txt\n"

expect ">>"
send "exit\n"