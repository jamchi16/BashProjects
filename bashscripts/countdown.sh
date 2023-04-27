#!/bin/bash

#countdown

read -p "Countdown should begin at what number? " start

until [ $start = 0 ]
    do 
    echo "$start"
    start=$((start-1))
    sleep 1
done
    echo "BLAST OFF"