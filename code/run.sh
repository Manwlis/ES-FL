#!/usr/bin/env bash
# execute server and clients from WSL2
# run: bash run.sh (number of clients)

# need it to supress the "UNC over CMD not supported" error
cd /mnt/c/Users/MSI

# run server
echo "/home/epetrakos/ES-FL/code/server"
cmd.exe /c start bash.exe -c "cd /home/epetrakos/ES-FL/code; ./server; exec bash"

#run clients
for (( i = 0 ; i < $1 ; i++ )); do
	echo "/home/epetrakos/ES-FL/code/client $1 ${i}"
	cmd.exe /c start bash.exe -c "cd /home/epetrakos/ES-FL/code; ./client $1 ${i}; exec bash"
done