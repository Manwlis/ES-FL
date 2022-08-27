#!/usr/bin/env bash
# execute server and clients in Ubuntu. Each process opens a new terminal.
# run: ./runUbuntu.sh (number of clients)

make clean
make all
echo ""

# Uncomment to divert server's output to a file.
# IO_file=~/ES-FL/code/IO_files/out.bin

# run server
command="/usr/bin/time -v ./server ${IO_file}; make clean; printf '\7'"
echo ${command}
gnome-terminal --window-with-profile=spawned -- bash -c "${command}"

mode=IID
# run clients
for (( i = 0 ; i < $1 ; i++ )); do
	sleep 5 # do not open all clients imidiately to not clog the system
	command="/usr/bin/time -v ./client ${mode} $1 ${i}"
	echo ${command}
	gnome-terminal --window-with-profile=spawned -- bash -c "${command}"
done