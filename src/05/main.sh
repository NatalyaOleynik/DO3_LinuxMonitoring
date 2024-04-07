#!/bin/bash

START_TIME=$(date +%s)

. ./check_number_arg.sh
. ./output.sh

END_TIME=$(date +%s)
exec_time=$(( $END_TIME - $START_TIME ))
echo "Script execution time (in seconds) = $exec_time"