#!/bin/bash


# Variables
log=$1
N=$2

# Code
awk '{print $2}' $log | tr -d "(|)|," | sort | uniq -c | sort -nr | head -n $N
