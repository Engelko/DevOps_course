#!/bin/bash
function SRV_LS {
   a=0
   cat servers_list | while read line
   do
      let "a+=1"
      echo "Server $a ip is $line"
   done
}

function SRV_SSH {
   USR=sewd
   cat servers_list | while read LINE; do
      echo "=========Server====$LINE========="
      ssh $USR@$LINE -p 2222 'bash -s' < variables_file.sh
   done
}

function ST_UPPER {
   cat variables_file.sh | while read LINE ; do
      echo "$LINE" | awk '{print toupper($0)}'
   done
}

function ST_LOWER {
   cat variables_file.sh | while read LINE ; do
      echo "$LINE" | awk '{print tolower($0)}'
   done
}

function ARRAY {
   . ./variables_file.sh
   IFS=', ' read -r -a array <<< $SENT
   echo "${array[0]}"
   echo "${array[-1]}"
}

function help {
   echo "ТУТ ВАМ ОКАЖУТ ПОМОЩЬ!"
   echo
   echo "ВСЁ ХОРОШО"
   echo 
   echo "просто отдохни"
   echo
}

case $1 in 
      -h) help ;; 
       h) help ;;
      -help) help ;;
esac
