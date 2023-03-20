#!/usr/bin/expect -f
# requires expect package

spawn xsct

expect ">>"
send "connect -host 127.0.0.1 -port 1440\n"

expect ">>"
send "tfile copy -to-host /run/media/mmcblk0p1/data/model_0.bin ~/ES-FL/code/cnn/vitis/host/variables/model.bin\n"

expect ">>"
send "tfile copy -to-host /run/media/mmcblk0p1/data/variables_vitis.txt ~/ES-FL/code/cnn/vitis/host/variables/variables_vitis.txt\n"

expect ">>"
send "exit\n"
