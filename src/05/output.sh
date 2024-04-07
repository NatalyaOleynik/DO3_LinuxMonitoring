#!/bin/bash

. ./var.sh
. ./func.sh

echo "Total number of folders (including all nested ones) = $total_folders"  

echo "TOP 5 folders of maximum size arranged in descending order (path and size):"
if [ $total_folders -eq 0 ]
then
echo "No folders"
else
top_5_folders
fi

echo "Total number of files = $total_files"
echo "Number of:"  
echo "Configuration files (with the .conf extension) = $conf" 
echo "Text files = $text"  
echo "Executable files = $exec"
echo "Log files (with the extension .log) = $log"  
echo "Archive files = $archive"  
echo "Symbolic links = $links"  
echo "TOP 10 files of maximum size arranged in descending order (path, size and type):"
if [ $total_files -eq 0 ]
then
echo "No files"
else
top_10_files
fi

echo "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file):"  
if [ $exec -eq 0 ]
then
echo "No executable files"
else
top_10_exec_files
fi