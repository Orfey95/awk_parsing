#!/bin/bash


# Variables
log=$1

# Code
awk -F "\"" '{print $8}' $log | sort | uniq -c | sort -nr | head -n -1
