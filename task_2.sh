#!/bin/bash

# Create array of time
time_array=($(awk 'match($0, /:[0-9][0-9]:[0-9][0-9]:[0-9][0-9]/){ print substr($0, RSTART+1, RLENGTH) }' $1 | sort))


printf "\nTime of first request: "${time_array[0]}"\n"
printf "Time of last request: "${time_array[-1]}"\n"
total_duration=$(date -d @$(( $(date -d "${time_array[-1]}" "+%s") - $(date -d "${time_array[0]}" "+%s") )) +%H:%M:%S)
printf "Total duration of requests: "$total_duration"\n"
period="00:0"$2":00"
printf "The period you specify is: "$period"\n"


echo $(date -d @$(( $(date -d "${time_array[0]}" "+%s") + $(date -d "$period" "+%s") )) +%H:%M:%S)




# Print time array
#for i in "${time_array[@]}"
#do
    #echo $i
    #if [ $i -lt  ]
#done
