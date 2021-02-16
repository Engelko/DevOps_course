#!/bin/bash
TIMESTAMP=`date +%S-%M-%H_%d-%m-%Y`
( echo '======= DATE' $TIMESTAMP '========' \
&& echo '====MEMORY====' && free -h \
&& echo '====FREE SPACE====' && df -h \
&& echo '====CPU INFO====' && lscpu \
&& echo '====LOAD AVERAGE====' && uptime | grep 'load average' ) >> /var/log/custom_daemon.log
