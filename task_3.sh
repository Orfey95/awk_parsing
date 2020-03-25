#!/bin/bash


# Variables
log=$1
N=$2

# Code
awk -F "\"" '{print $6}' $log | grep -ve '^-$' | sort | uniq -c | sort -nr | head -n $N
