#!/bin/bash


# Variables
log=$1
N=$2
K=$3

# Get url array
url_array=($(awk 'match($0,/GET .+ HTTP/) {print substr($0,RSTART,RLENGTH)}' $log | awk '{print $2}' | grep -ve '^/$'))

len_url_array="${#url_array[@]}"

for ((i=0;i<$len_url_array;i++))
do

        if [ $(printf "%b" "${url_array[i]}" | grep -o "/" | wc -l) -eq $(echo $K-1 | bc) ];
then
        good_url_array[i]=$(printf "%b" "${url_array[i]}")
fi

done
echo "${good_url_array[@]}" | tr ' ' '\n' | sort | uniq -c | sort -nr | head -n $N
