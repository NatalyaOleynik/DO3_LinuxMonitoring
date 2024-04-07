#!/bin/bash

param=$1

function top_5_folders
{	
	for i in {1..5}
	do
		echo -n "$i - "
		file=$(sudo du -h $param | sort -rh | head -6 | grep $param. | awk '{print $2 ", " $1}' | sed "${i}q;d")
		echo "$file"
          
	done
}

function top_10_files
{	
	for i in {1..10}
	do
		file=$(sudo find $param -type f -exec du -h {} + | sort -rh | head -10 | sed "${i}q;d")
		if ! [[ -z $file ]]
		then
			echo -n "$i - "
			echo -n "$(echo $file | awk '{print $2 ", " $1 ", "}')"
			echo "$(echo $file | grep -o -E "\.[^/.]+$" | awk -F . '{print $2}')"
        else
			echo "$i - "
		fi
	done
}

function top_10_exec_files
{
  	for i in {1..10}
  	do
		file=$(sudo find $param -type f -executable -exec du -h {} + | sort -rh | head -10 | sed "${i}q;d")
		if ! [[ -z $file ]]
		then
			echo -n "$i - "
			echo -n "$(echo $file | awk '{print $2 ", " $1 ", "}')"

			file1=$(echo $file | awk '{print $2}')
			MD5=$(md5sum $file1 | awk '{print $1}')
			echo "$MD5"

        else
			echo "$i - "    
		fi
	done
}