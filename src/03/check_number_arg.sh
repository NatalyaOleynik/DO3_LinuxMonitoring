#!/bin/bash

if [[ $# -lt 4 ]]
then
echo "Too few arguments"
exit 1
elif [[ $# -gt 4 ]]
then
echo "Too many arguments"
exit 1
fi