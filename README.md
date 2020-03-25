# awk_parsing
Собрать статистику по айпишникам браузера, в результате указать N самых частых.
```
vagrant@EPUAKHAWO13DT11:~$ ./task_1.sh access_log 7
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
Найти N самых частых User-Agent.
```
vagrant@EPUAKHAW013DT11:~$ ./task_3.sh access_log 7
  18469 Amazon CloudFront
   9077 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36
   7624 Jakarta Commons-HttpClient/3.1
   5469 Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36
   3462 Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko
   3333 Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36
   2379 Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36
```
К-во запросов по апстримам (воркерам).
```
vagrant@EPUAKHAWO13DT11:~$ ./task_7.sh access_log
   7166 ajp://10.1.4.69:8009
   7140 ajp://10.1.3.204:8009
   7136 ajp://10.1.4.67:8009
   7136 ajp://10.1.3.205:8009
   7135 ajp://10.1.4.15:8009
   7135 ajp://10.1.3.203:8009
   7135 ajp://10.1.3.202:8009
   7134 ajp://10.1.3.201:8009
   7133 ajp://10.1.4.70:8009
   7133 ajp://10.1.3.88:8009
   7130 ajp://10.1.4.66:8009
   7125 ajp://10.1.4.68:8009
   7114 ajp://10.1.3.86:8009
   6975 ajp://10.1.4.17:8009
```
