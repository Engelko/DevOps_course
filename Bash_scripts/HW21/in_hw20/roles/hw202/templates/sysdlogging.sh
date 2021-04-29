#!/bin/bash
TIMESTAMP=`date +%S-%M-%H_%d-%m-%Y`
( echo '======= DATE' $TIMESTAMP '========' \
&& echo '====TIME ZONE====' && timedatectl | grep "Time zone" \
&& echo '====IP ADDRESS====' && hostname -I ) >> /tmp/custom_daemon.log
