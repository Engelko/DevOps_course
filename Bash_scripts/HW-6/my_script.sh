#!/bin/bash
. ./variables.sh
. ./lib_for_sh.sh

#===for interactive=======
#echo "Please touch number:
#1)Show directory older than 10 days
#2)Show files older than 10 days
#3)Show system info
#4)Add host in hosts files
#5)Change ip in hosts files
#6)Find DELETE_ME "
#read NUM
#========================
case $1 in 
	1)	
		echo "$TIME DIRECTORIES OLDER THAN 10 DAYS"
		DIR_OLDER
		;;

	2)
		echo "$TIME FILES OLDER THAN 10 DAYS"
		FILES_OLDER
		;;
	3)
		echo "$TIME SYSTEM INFO FOR /"
		SYS_INFO
		;;
	4) 	
		echo "$TIME HOST FILE ADD"
		ADD_HOSTS
		;;
	5)	
		echo "$TIME CHANGE IP FOR MYAPP.COM"
		CHANGE_IP
		;;
	6)	
		echo "$TIME FIND -d && -f DELETE_ME"
		FIND_DELME
		;;
	*)
		echo -e "\033[31mСharacter is not correct"
		tput setaf 7
		;;
esac
