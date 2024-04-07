#!/bin/bash

if [[ $# -eq 0 ]]
then
echo "Too few arguments"
exit 1
elif [[ $# -gt 1 ]]
then
echo "Too many arguments"
exit 1
fi

if ! [[ $1 =~ \/$ ]]
then
echo "The parameter must end with '/'."
exit 0
fi