function DIR_OLDER {
	for finddir in $(find $HOME -mindepth 1 -maxdepth 1 -type d -ctime +10 | xargs ls -ld |  awk '{if ($1>0) print $1, $6, $7, $8, $9}' )
	do
	echo -e "\033[31m $finddir"
	done
	tput setaf 7
	LOG "DIR_OLDER"
}
function FILES_OLDER {
	for findfile in $(find $HOME -type f -ctime +10 | xargs ls -la |  awk '{print $1, $6, $7, $8, $9}' )
	do
	echo -e "\033[32m $findfile"
	done
	tput setaf 7
	LOG "FILES_OLDER"
}
function SYS_INFO {
	PID=$(echo "Total PIDS: `top -bn1 | grep Tasks | awk '{printf $2}'`")
	MEMORY=$(echo "Total MEMORY usage: `free -m | awk 'NR==2{printf "%s/%s", $3,$2 }'` MB")
	CPU=$(echo "Total CPU usage: `top -bn1 | grep load | awk '{printf "%.2f", $(NF-2)}'` %")
	HDD=$( echo "Total DISC usage: `df -h | awk '$NF=="/"{printf "%d/%d (%s)\n", $3,$2,$5}'` GB")
	echo -e "\033[33m$PID"
	echo -e "\033[34m$MEMORY"
	echo -e "\033[35m$CPU"
	echo -e "\033[36m$HDD"
	tput setaf 7
	LOG "SYS_INFO"
}
function ADD_HOSTS {
if ! sudo grep -qxF '192.168.3.1 myapp.com' $ETC_HOSTS
	then
	sudo echo "192.168.3.1 myapp.com" >> $ETC_HOSTS
	echo -e "\033[35mADD ADDRESS MYAPP.COM TO FILE HOSTS"
	else
	echo -e "\033[32mFILE HOSTS IS COMPLETE!"
fi
tput setaf 7
LOG "ADD_HOSTS"
}
function CHANGE_IP {
	read -p "Change ip add? 1=yes or 2=no: " change
if (($change==1))
then
	read -p "Input ip address for myapp.com: " ip
	sudo sed -i -- "s/.*myapp\.com/$ip myapp.com/g" $ETC_HOSTS
	echo "$ip is a new ip address for myapp.com in hosts file"
else
	echo "FILE HOSTS IS COMPLETE!"
fi
LOG "CHANGE_IP"
}
function FIND_DELME {
	DEL_FILE_PATH=DELETE_ME
while [ ! -d  $DEL_FILE_PATH ] && [ ! -f  $DEL_FILE_PATH ]
do
	sleep 2
done
	sudo echo "$TIME Directory DELETE_ME is detected!!" >> script.log
	$(date > ~/temp) ; echo "fin"
	LOG "FIND_DELETE_ME"
}
function LOG {
		action=$1
        if [ $# -eq 1 ]
        then
                user_pid=`ps aux | grep './script_test.sh' | awk 'NR==1{printf "User: %s, PID: %s", $1, $2}'`
                log="Date: `date`, Action: $action, $user_pid"
                echo $log >> ~/script.log
        fi
}
