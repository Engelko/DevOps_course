#!/bin/bash
USER_NAME="hw8"
USER_HOME="/opt"
HOSTS_FILE="/etc/hosts"
GROUP=wheel
SSHD_CONFIG="/etc/ssh/sshd_config"
DNS_PATH="/etc/resolv.conf"
DNS1="8.8.8.8"
DNS2="1.1.1.1"
APP_ADRESS="myownapp.com"
MY_IP="$(curl -s http://ifconfig.me/ip)"
PASSWORD_AUTH_YES="PasswordAuthentication yes"
PASSWORD_AUTH_NO="PasswordAuthentication no"
ROOT_LOGIN_YES="PermitRootLogin without-password"
ROOT_LOGIN_NO="PermitRootLogin no"

#======ADD USER=======

function ADD_USER {
    echo "Add $USER_NAME user"
    if grep "$USER_NAME" /etc/passwd
    then
    echo "User $USER_NAME is already in the system"
    else
    sudo useradd -m -s /bin/bash -d ${USER_HOME}/${USER_NAME} -G $GROUP ${USER_NAME} 
    fi
}

#======ADD USER TO SUDOERS======

function USER_TO_SUDO {
    echo "Add $USER_NAME to sudoers file"
	if sudo grep "$USER_NAME    ALL=(ALL:ALL) NOPASSWD:ALL" /etc/sudoers
    then
	echo "$USER_NAME is in sudoers file"
	else
	sudo sh -c "echo \"$USER_NAME    ALL=(ALL:ALL) NOPASSWD:ALL\" >> /etc/sudoers" 
	fi
}

#======GENERATE SSH KEY FOR USER======

function ADD_SSH_KEY {
    echo "Add ssh key for: $USER_NAME"
	sudo mkdir -p ${USER_HOME}/${USER_NAME}/.ssh
	sudo chown -R $USER_NAME:$USER_NAME ${USER_HOME}/${USER_NAME}/.ssh
	sudo chmod 700 ${USER_HOME}/${USER_NAME}/.ssh
	sudo touch ${USER_HOME}/${USER_NAME}/.ssh/authorized_keys
	sudo chown -R $USER_NAME:$USER_NAME ${USER_HOME}/${USER_NAME}/.ssh/authorized_keys
	sudo chmod 600 ${USER_HOME}/${USER_NAME}/.ssh/authorized_keys
	sudo cat /home/vagrant/.ssh/authorized_keys | sudo tee -a ${USER_HOME}/${USER_NAME}/.ssh/authorized_keys
}

#======UPDATE HOSTS======

function UPDATE_HOSTS {
    echo "Check hosts file"
	if ! grep -q "^myownapp.com*" "$HOSTS_FILE"
	then
	echo "Add adress to /etc/hosts"
	echo "127.0.0.1 myownapp.com" | sudo tee -a "$HOSTS_FILE"
	else
	echo "HOSTS complete!"
	fi
}

#======RESTRICT PASS CONNECTION======

function RES_PASS_CONNECT {
    echo "Restrict password connection"
    sudo sed -i -- "s/$ROOT_LOGIN_YES/$ROOT_LOGIN_NO/g" $SSHD_CONFIG
}

#======RESTRICT ROOT ACCESS VIA SSH======

function RES_ROOT_SSH {
    echo "Restrict root access"
    sudo sed -i -- "s/$PASSWORD_AUTH_YES/$PASSWORD_AUTH_NO/g" $SSHD_CONFIG
}

#======INSTALL MC,VIM,GIT======

function INSTALL_APPS {
    echo "Installing apps, mc, vim ,git nano"
    sudo yum install -y mc vim git nano &> /dev/null
}

#======UPDATE DNS======

function DNS_UPDATE {
    echo "Updating DNS"
    sudo chmod 700 $DNS_PATH
    echo "nameserver $DNS1" | sudo tee -a $DNS_PATH > /dev/null
    echo "nameserver $DNS2" | sudo tee -a $DNS_PATH > /dev/null
}

#======CHECK MYOWNAPP.COM CAN BE RESOLVED======

function CHECK_SITE {
    echo "Check myownapp.com availability"
    if ping -c 1 $APP_ADRESS &> /dev/null
    then
        echo "Adress available"
    else
        echo "Adress unavailable"
		UPDATE_HOSTS
    fi
}

#======PRINT WHITE IP======

function EXT_IP {
    echo "My IP is: ${MY_IP}"
}

#======CREATE DIR & CHANGE OWNER======

function CREATE_OWNER {
    echo "Create directory"
    sudo mkdir /var/log/myownapp 
    echo "Change owner"
    sudo chown -R $USER_NAME:root /var/log/myownapp

}

ADD_USER
USER_TO_SUDO
ADD_SSH_KEY
UPDATE_HOSTS
RES_PASS_CONNECT
RES_ROOT_SSH
INSTALL_APPS
DNS_UPDATE
CHECK_SITE
EXT_IP
CREATE_OWNER
