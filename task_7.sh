#!/bin/bash


# Variables
log=$1

# Code
awk -F "\"" '{print $8}' $log | grep -ve '^-$' | sort | uniq -c | sort -nr
