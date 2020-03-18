#!/bin/bash


#################################
# Create array of time ##########
time_array=($(awk 'match($0, /:[0-9][0-9]:[0-9][0-9]:[0-9][0-9]/){ print substr($0, RSTART+1, RLENGTH) }' $1 | sort))
#################################
# Some prints ###################
printf "\nTime of first request: "${time_array[0]}"\n"
printf "Time of last request: "${time_array[-1]}"\n"
total_duration=$(date -d @$(( $(date -d "${time_array[-1]}" "+%s") - $(date -d "${time_array[0]}" "+%s") )) +%H:%M:%S)
printf "Total duration of requests: "$total_duration"\n"
period="00:0"$2":00"
printf "The period you specify is: "$period"\n"
##################################
# Calculate number of periods #####
number_of_periods=0
for ((i=1;;i++))
do
temp=$(( $(date -d "$total_duration" "+%s") - $(date -d "00:0$(echo $2*$i | bc):00" "+%s")))
if [[ $temp -gt 0 ]]; then
continue
else
number_of_periods=$i
break
fi
done
printf "Number of periods: "$number_of_periods"\n"
###################################
# Create array of periods #########
periods_array=()
for ((j=1;j<$number_of_periods+1;j++))
do
periods_array+=("$(echo $(date -d @$(( $(date -d "${time_array[0]}" "+%s") + $(date -d "00:0$(echo $2*$j | bc):00" "+%s") )) +%H:%M:%S))")
done

echo "${periods_array[@]}"
###################################
#for i in "${time_array[@]}"
#do
    #echo $i
    #if [ $i -lt  ]
#done
