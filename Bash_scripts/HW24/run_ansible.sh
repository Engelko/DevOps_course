#!/bin/bash
########################## REQUIREMENTS
# sudo apt-get install ansible unzip
########################## VARIBLES

PLAYBOOK_GZ="playbook.zip"
PLAYBOOK_FILE="hw24.yml"
INVENTORY_FILE="hosts.yml"
INVENTORY_FILE_2="hosts_2.yml"

EXTRA_ARGS="--list-tasks --list-hosts"
VAULT="--vault-password-file=pass1"
DATENOW=`date +%Y-%m-%d.%H:%M:%S`
WORK_FOLDER=from_hw23
SOURCE_DIR=$(pwd)
DESTINATION_DIR=/tmp/update
LOGFILE=$SOURCE_DIR/update.log


########################## CODE

echo "Starting log $DATENOW" >> $LOGFILE

echo -n "Adding key... " >> $LOGFILE
cd ~/.ssh
cat id_rsa.pub >> authorized_keys
SORTIDA=$?
echo OK >> $LOGFILE

echo -n "Cleaning folders... " >> $LOGFILE
rm -rf $DESTINATION_DIR 2> /dev/null
mkdir $DESTINATION_DIR
cp -r $SOURCE_DIR/$WORK_FOLDER $DESTINATION_DIR
SORTIDA=$?
echo OK >> $LOGFILE

# echo -n "Uncompressing update... " >> $LOGFILE
# cd $DESTINATION_DIR
# unzip $PLAYBOOK_GZ
# rm $PLAYBOOK_GZ
# SORTIDA=$?
# echo OK >> $LOGFILE

echo "Start Ansible... " >> $LOGFILE
cd $DESTINATION_DIR/$WORK_FOLDER
ansible-playbook -i $INVENTORY_FILE -i $INVENTORY_FILE_2 $PLAYBOOK_FILE $VAULT >> $LOGFILE
SORTIDA=$?
echo OK >> $LOGFILE

if [ "$SORTIDA" -eq 0 ];
then
    echo "Updated!"
else
    echo "Update failed!"
fi

echo "Ending log $DATENOW" >> $LOGFILE

exit $SORTIDA
