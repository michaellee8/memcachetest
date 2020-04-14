#!/bin/bash
(hostname && echo && cat /proc/cpuinfo && echo && getconf -a | grep CACHE && echo && lscpu && echo && ./mbench -c ) > log.txt
curl -X POST 'https://demo5256874.mockable.io/test-result' --data-binary @log.txt -H 'Content-Type: text/plain'
