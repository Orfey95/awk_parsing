# awk_parsing
Собрать статистику по айпишникам браузера, в результате указать N самых частых.
```
vagrant@EPUAKHAWO13DT11:~$ cat access_log | awk '{print $2}' | tr -d "(|)|," | sort | uniq -c | sort -nr | head -n 7
   4464 54.246.139.111
   4219 54.77.132.130
   3170 196.11.134.77
   1850 41.21.128.106
   1049 196.15.209.146
    626 196.38.95.108
    534 147.110.251.87
```
Найти частоту запросов в интервал времени dT(минут) и ход решения.
```
match($0, /:[0-9][0-9]:[0-9][0-9]:[0-9][0-9]/) { print substr($0, RSTART+1, RLENGTH) }
```
```
#!/bin/bash

time=$(awk 'match($0, /:[0-9][0-9]:[0-9][0-9]:[0-9][0-9]/){ print substr($0, RSTART+1, RLENGTH) }' $1)
echo $time | tr -s " " "\n" | sort
```
