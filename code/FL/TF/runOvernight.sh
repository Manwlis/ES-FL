#!/usr/bin/env bash
# execute server and clients in Ubuntu. Each process opens a new terminal.
# run: ./runUbuntu.sh (number of clients)

make clean
make all
echo ""

# Uncomment to use initial variables set by server
IO_file=IO_files/init_model.bin


Batch_sizes=( 3 4 )
LR_decays=( 0.985 0.988600589 0.99 )
num_clients=10
mode=IID

for Batch_size in ${Batch_sizes[@]} ; do
	for LR_decay in ${LR_decays[@]} ; do
		echo "${Batch_size} ${LR_decay}"
		export Batch_size=${Batch_size}
		export LR_decay=${LR_decay}

		# run server in a new window
		command="./server ${IO_file}"
		echo ${command}
		gnome-terminal --window-with-profile=spawned -- bash -c "${command}"

		declare -i last_client=${num_clients}-1
		
		# run 4 clients in background
		for (( i = 0 ; i < ${last_client} ; i++ )); do
			command="./client ${mode} ${num_clients} ${i}"
			echo ${command}
			gnome-terminal -- bash -c "${command}"
			sleep 2
		done

		# run the 5th client in the foreground to block the script
		command="./client ${mode} ${num_clients} ${last_client}"
		echo ${command}
		./client ${mode} ${num_clients} ${last_client} > /dev/null
	done
	echo
done