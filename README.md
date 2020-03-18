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
vagrant@EPUAKHAWO13DT11:~$ ./task_2.sh access_log 4

Time of first request: 09:01:24
Time of last request: 09:17:14
Total duration of requests: 00:15:50
The period you specify is: 00:04:00
Number of periods: 4
Periods:
09:01:24 09:05:24 09:09:24 09:13:24 09:17:14
Period 1
23653
Period 2
25434
Period 3
25693
Period 4
25220
```
