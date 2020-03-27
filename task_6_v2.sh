#!/bin/bash


# Variables
log=$1
N=$2
K=$3

# Get url array
url_array=($(awk 'match($0,/GET .+ HTTP/) {print substr($0,RSTART,RLENGTH)}' $log | awk '{print $2}' | grep -ve '^/$'))

len_url_array="${#url_array[@]}"

regex="^(/[-A-Za-z0-9\+&@#%?=~_|!:,.;]*){$(echo $K-1 | bc)}$"

for ((i=0;i<$len_url_array;i++))
do

        if [[ $(printf "%b" "${url_array[i]}") =~ $regex ]];
then
        echo $(printf "%b" "${url_array[i]}")
fi

done | sort | uniq -c | sort -nr | head -n $N
