#!/bin/bash

re='[+-]?[0-9]+([.][0-9]+)?'

if [[ $1 =~ $re ]]
then
echo "Invalid input"
else 
echo $1
fi