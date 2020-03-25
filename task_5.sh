#!/bin/bash


# Variables
log=$1
N=$2

# The list of links with the minimum length
echo "The list of links with the minimum length:"
echo "Size Count URL"
awk 'match($0,/GET .+ HTTP/) {print substr($0,RSTART,RLENGTH)}' $log | awk '{print $2}' | grep -ve '^/$' | sort | uniq -c | awk '{ print length, $0 }' | sort -ns | awk '{print $2,$3}' | head -n $N | awk '{ print length($2), $0 }'


# The list of links with the maximum length
echo "The list of links with the minimum length:"
echo "Size Count URL"
awk 'match($0,/GET .+ HTTP/) {print substr($0,RSTART,RLENGTH)}' $log | awk '{print $2}' | grep -ve '^/$' | sort | uniq -c | awk '{ print length, $0 }' | sort -nrs | awk '{print $2,$3}' | head -n $N | awk '{ print length($2), $0 }'
