#!/bin/bash

new=$(date +"%d_%m_%y_%H_%M_%S")
filename="$new.status"
read -p "Write data to a file? [Y/N] " answer
if [[ $answer =~ [yY] ]]
then
./output.sh > $filename
fi