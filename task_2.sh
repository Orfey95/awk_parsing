#!/bin/bash


# Variables
log=$1
dT=$2
#################################
# Create array of time ##########
time_array=($(awk 'match($0, /:[0-9][0-9]:[0-9][0-9]:[0-9][0-9]/){ print substr($0, RSTART+1, RLENGTH) }' $log | sort))
#################################
# Some prints ###################
printf "\nTime of first request: "${time_array[0]}"\n"
printf "Time of last request: "${time_array[-1]}"\n"
total_duration=$(date -d @$(( $(date -d "${time_array[-1]}" "+%s") - $(date -d "${time_array[0]}" "+%s") )) +%H:%M:%S)
printf "Total duration of requests: "$total_duration"\n"
period="00:0"$dT":00"
printf "The period you specify is: "$period"\n"
##################################
# Calculate number of periods #####
number_of_periods=0
for ((i=1;;i++))
do
temp=$(( $(date -d "$total_duration" "+%s") - $(date -d "00:0$(echo $dT*$i | bc):00" "+%s")))
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
sum=0
for ((j=1;j<$number_of_periods+1;j++))
do
periods_array+=("$(echo $(date -d @$(( $(date -d "${time_array[0]}" "+%s") + $(date -d "00:0$(echo $dT*$j | bc):00" "+%s") )) +%H:%M:%S))")
done
printf "Periods:\n"
echo "${time_array[0]} ${periods_array[@]:0:$(echo $number_of_periods-1 | bc)} ${time_array[-1]}"
###################################
# Count number of requests in periods
count_requests=0
counter=0
for ((m=0;m<$(echo "${#periods_array[@]}"-1 | bc);m++))
do
for ((n=$count_requests;n<"${#time_array[@]}";n++))
do
if [[ $(date -d "${time_array[n]}" "+%s") -lt $(date -d "${periods_array[m]}" "+%s") ]]; then
continue
else
count_requests=$n
break
fi
done
echo "Period $(echo $m+1 | bc)"
echo $count_requests-$counter | bc
sum=$(echo $sum+$(echo $count_requests-$counter | bc) | bc)
counter=$count_requests
done
echo "Period ${#periods_array[@]}"
echo "${#time_array[@]}-$sum" | bc
