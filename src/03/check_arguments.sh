#!/bin/bash

if [[ $1 -eq $2 ]] && [[ $3 -eq $4 ]]
then
echo "Parameters 1 and 2 are the same. Parameters 3 and 4 are the same. Please enter different values."
exit 0
elif [[ $1 -eq $2 ]]
then
echo "Parameters 1 and 2 are the same. Please enter different values."
exit 0
elif [[ $3 -eq $4 ]]
then
echo "Parameters 3 and 4 are the same. Please enter different values."
exit 0
fi

for var in "$@"
do
if ! [[ $var =~ ^[1-6]$ ]]
then
echo "The parameters can be numbers from 1 to 6. Please enter the correct parameters."
exit 0
fi
done