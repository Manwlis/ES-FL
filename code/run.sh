#!/usr/bin/env bash
# execute server and clients from WSL2
# run: bash run.sh (number of clients)

make clean
make all
echo ""
# need it to supress the "UNC over CMD not supported" error
cd /mnt/c/Users/MSI

# IO_file=/home/epetrakos/ES-FL/code/IO_files/out.bin
# run server
echo "cd /home/epetrakos/ES-FL/code; /usr/bin/time -v ./server ${IO_file}; make clean; printf '\7'; exec bash"
cmd.exe /c start bash.exe -c "cd /home/epetrakos/ES-FL/code; /usr/bin/time -v ./server ${IO_file}; make clean; printf '\7'; exec bash"

mode=IID
# run clients
for (( i = 0 ; i < $1 ; i++ )); do
	echo "cd /home/epetrakos/ES-FL/code; /usr/bin/time -v ./client ${mode} $1 ${i}; exec bash"
	cmd.exe /c start bash.exe -c "cd /home/epetrakos/ES-FL/code; /usr/bin/time -v ./client ${mode} $1 ${i}; exec bash"
	sleep 5 # do not open all clients imidiately to not clog the CPU
done