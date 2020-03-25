1) Собрать статистику по айпишникам браузера, в результате указать N самых частых.
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
2) Найти частоту запросов в интервал времени dT(минут) и ход решения.
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
3) Найти N самых частых User-Agent.
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
5) Найти N самых длинных запросов или самых коротких запросов.
```
vagrant@EPUAKHAW013DT11:~$ ./task_5.sh access_log 3
The list of links with the minimum length:
Size Count URL
5 1 /home
5 619 /lite
6 1 /about
The list of links with the minimum length:
Size Count URL
1907 1 /merlin-service-search/rest/adverts?accessKey=0bca88be-0aab-461a-809b-58d9d045b976&client=ANDROID_SEARCH&pageNumber=0&recordsPerPage=0&id=8a81b5ab4fb5fcb1014fbcb610ff08b6;8a8183204dbb2667014dbe0474b2137e;8a81b6344fb64c9d014fbb313555534f;8a8183224a5f284a014aad873dd659ce;8a8183874df8b5e6014dfb24616e0b9f;8a81b58f4f463b9a014f4a92ce8d362a;8a81b6a74ebb2ca0014ec1c89c1d390c;8a81b3a44e25d464014e2adffc7435a8;8a8183674dbb3f3c014dc39da5eb578e;8a8184db46f2342c0147108c7a615da5;8a81b58e4f835944014f886b1779537e;8a81b5504edae4dd014ef2697ad3647b;8a81b5094edad57d014ef3ec03237ab7;8a81b58e4f5c70a3014f63eadc265157;8a81b64e4f01bcca014f07ae4ae5396d;8a81836748efe6b101499e0339082b91;8a81833a45a8f919014605917ffd7ec7;8a81b5e94fdb8104014fe1da0e0d5a21;8a81833a4532350301454b9a49cc2f21;8a81b64e4f22c9d6014f2bb6188f6dd2;8a8183fe4b2c6cbc014b44344b7044f2;8a8184ae4dbb3c77014dd2bb6dc5793d;8a8183554dbb2ce1014de083ffea17ab;8a81b6624e4b003d014e76f42c1f1c0e;8aa782603dca00cc013dcb16c9ea2ca3;8a8183234a5f11ea014a77d7fd374db7;8a8183cf4cbe2bbd014ce0c584d1741d;8a8184404dbb3d13014dc81268bf1cf8;8a8183554dbb2ce1014dc848ec3f19c3;8a8184fb47abffea0147c46e3fc042ad;8a81b6e74fad0531014fd293ecd3522f;8a8184e14d72c786014d94fd1fa15934;8a8183da4ffd7b69015009b4f12a144d;8a81b6d34f5c43f5014f5facbcac361a;8a81b64e4f2d90f0014f305a6abc0fdf;8a81b22e4e026dbc014e25f37eb215be;8a8184964d283d7a014d33eed24b0df3;8a81b6344fd0a2d0014fd5a5b64e4b5f;8a8184da4cbe2c31014cc24513cf3340;8a81b3094e02689b014e1d18bccb13c0;8a8184554d28022a014d2d3ed9bc3d17;8a81b6d04f73c42a014f86a471644ce7;8a8183324817f16601484516737f16c4;8a8184db46f2342c0146f5a643bf020c;8a81b5184fb636ba014fbbea7b9676d8;8a8183de4c990f9b014ca1e65d763cbb;8a8184dc4cff4b88014d008b405f1704&advertiserId=&channel=&makeModel=&manufactureYear=&price=&mileageInKm=&engineCapacityInCC=&lat=-26.19489&lon=28.04128&distance=&keywords=&bodyType=&advertiserType=&isUsed=&sortBy=&return=resultType%7Cresults%7CnumFound
1485 1 /carandcommercialpricerangeszar/under-10-000/carandcommercialpricerangeszar/10-000-to-24-999/carandcommercialpricerangeszar/25-000-to-39-999/carandcommercialpricerangeszar/40-000-to-54-999/carandcommercialpricerangeszar/55-000-to-69-999/carandcommercialpricerangeszar/70-000-to-84-999/carandcommercialpricerangeszar/85-000-to-99-999/carandcommercialpricerangeszar/100-000-to-124-999/carandcommercialpricerangeszar/125-000-to-149-999/carandcommercialpricerangeszar/150-000-to-174-999/radius/200km/bikeandcarmileageranges/below-1-000-km/bikeandcarmileageranges/1-000-km-to-4-999-km/bikeandcarmileageranges/5-000-km-to-9-999-km/bikeandcarmileageranges/10-000-km-to-19-999-km/bikeandcarmileageranges/20-000-km-to-49-999-km/bikeandcarmileageranges/50-000-km-to-74-999-km/bikeandcarmileageranges/75-000-km-to-99-999-km/carenginecapacityranges/1-6l-to-1-8l/carenginecapacityranges/1-9l-to-2-0l/carenginecapacityranges/2-1l-to-2-5l/makemodel/make/alfa-romeo/makemodel/make/audi/model/a3/makemodel/make/lexus/model/is/makemodel/make/bmw/model/1-series/makemodel/make/mazda/model/3/model/mazda3/makemodel/make/facel-vega/model/other/makemodel/make/opel/model/astra/model/corsa/makemodel/make/ford/model/focus/makemodel/make/hyundai/model/i30/makemodel/make/subaru/model/impreza/makemodel/make/volkswagen/model/golf/model/velociti/makemodel/make/kia/model/cerato/model/koup/model/rio/search?sort=MostRecent&county=KwaZulu-Natal&longitude=31.0292&locationName=Durban&latitude=-29.8579&pageNumber=2
1484 1 /carandcommercialpricerangeszar/under-10-000/carandcommercialpricerangeszar/10-000-to-24-999/carandcommercialpricerangeszar/25-000-to-39-999/carandcommercialpricerangeszar/40-000-to-54-999/carandcommercialpricerangeszar/55-000-to-69-999/carandcommercialpricerangeszar/70-000-to-84-999/carandcommercialpricerangeszar/85-000-to-99-999/carandcommercialpricerangeszar/100-000-to-124-999/carandcommercialpricerangeszar/125-000-to-149-999/carandcommercialpricerangeszar/150-000-to-174-999/radius/200km/bikeandcarmileageranges/below-1-000-km/bikeandcarmileageranges/1-000-km-to-4-999-km/bikeandcarmileageranges/5-000-km-to-9-999-km/bikeandcarmileageranges/10-000-km-to-19-999-km/bikeandcarmileageranges/20-000-km-to-49-999-km/bikeandcarmileageranges/50-000-km-to-74-999-km/bikeandcarmileageranges/75-000-km-to-99-999-km/carenginecapacityranges/1-6l-to-1-8l/carenginecapacityranges/1-9l-to-2-0l/carenginecapacityranges/2-1l-to-2-5l/makemodel/make/alfa-romeo/makemodel/make/audi/model/a3/makemodel/make/lexus/model/is/makemodel/make/bmw/model/1-series/makemodel/make/mazda/model/3/model/mazda3/makemodel/make/facel-vega/model/other/makemodel/make/opel/model/astra/model/corsa/makemodel/make/ford/model/focus/makemodel/make/hyundai/model/i30/makemodel/make/subaru/model/impreza/makemodel/make/volkswagen/model/golf/model/velociti/makemodel/make/kia/model/cerato/model/koup/model/rio/search?sort=MostRecent&gquery=null&locationName=Durban&latitude=-29.8579&longitude=31.0292&county=KwaZulu-Natal
```
7) К-во запросов по апстримам (воркерам).
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
8) По рефереру найти статистику переходов. В результате указать домены и к-во переходов.
```
vagrant@EPUAKHAW013DT11:~$ ./task_8.sh access_log
  51570 www.autotrader.co.za
   2010 bikes.autotrader.co.za
   1615 dealer.autotrader.co.za
    729 commercial.autotrader.co.za
    569 www.google.co.za
    550 scrapy.org
    529 www.google.com
    296 www.bing.com
    282 leisure.autotrader.co.za
    162 help.yahoo.com
    118 www.autofuzion.co.za
    113 farm.autotrader.co.za
     83 autofuzion.co.za
     68 plant.autotrader.co.za
     23 www.dealer.co.za
     21 www.pingdom.com
     19 www.baidu.com
     18 www2.autotrader.co.za
     17 www.grapeshot.co.uk
     11 t.co
      8 www.proximic.com
      7 www.google.com.na
      6 www.google.co.mz
      5 www.googleadservices.com
      5 www.google.ae
      5 www.genieo.com
      5 www.ananzi.co.za
      5 webcache.googleusercontent.com
      5 search.yahoo.com
      4 www.google.co.bw
      4 search.msn.com
      4 r.search.yahoo.com
      3 www.search.ask.com
      3 www.google.co.zm
      3 int.search.tb.ask.com
      2 za.ask.com
      2 www.zapmeta.co.za
      2 www.google.nl
      2 www.google.com.my
      2 www.google.com.cy
      2 www.google.co.uk
      2 www.google.co.in
      2 www.google.cm
      2 www.google.cd
      2 www.google.be
      2 www.cayenneworld.com
      2 www.alfaowner.com
      2 uk.zapmeta.com
      2 response.autotrader.co.za
      2 ltx71.com
      2 github.com
      1 www.veemotors.co.za
      1 www.mysearch.com
      1 www.google.com.ng
      1 www.google.com.gh
      1 www.google.com.eg
      1 www.google.co.th
      1 www.google.co.ls
      1 www.google.co.jp
      1 www.creativelabportal.co.za
      1 www.bothadeysel.co.za
      1 www.aksons.co.za
      1 tamil.filmibeat.com
      1 searches.vi-view.com
      1 hypnohub.net
      1 goo.gl
      1 go.mail.ru
      1 extendedwarrantyusedcar.xyz
      1 cayenneworld.com
      1 car.donkiz.co.za
      1 156.8.251.153:15871
```
