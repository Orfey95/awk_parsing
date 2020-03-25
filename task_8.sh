#!/bin/bash


# Variables
log=$1

# Code
awk 'match($0,/(http|https):\/\/.+" "/) {print substr($0,RSTART,RLENGTH-1)}' $log | awk '{print $1}' | awk -F "/|)|\"" '{print $3}' | sort | uniq -c | sort -nr
