#!/usr/bin/env bash
# execute server and clients in Ubuntu. Each process opens a new terminal.
# run: ./runUbuntu.sh (number of clients)

make clean
make all
echo ""

# Uncomment to use initial variables set by server
IO_file=IO_files/init_model.bin

# run server
# command="/usr/bin/time -v ./server ${IO_file}; make clean; printf '\7'"
command="./server ${IO_file}; make clean; printf '\7'"
echo ${command}
gnome-terminal --window-with-profile=spawned -- bash -c "${command}"

mode=IID
# run clients
for (( i = 0 ; i < $1 ; i++ )); do
	# command="/usr/bin/time -v ./client ${mode} $1 ${i}"
	command="./client ${mode} $1 ${i}"
	echo ${command}
	gnome-terminal --window-with-profile=spawned -- bash -c "${command}"
done