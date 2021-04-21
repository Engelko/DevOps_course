Ansible

1.	Try to read and play with https://docs.ansible.com/ansible/latest/user_guide/playbooks_loops.html

2.	Get the latest version of packages from the task mentioned in HW20 point 5. Update your playbook with installing a particular version of those packages instead of latest. Do this in 2 ways: using loop and with_*

3.	Create a simple log generator systemd service using ansible template. Service name, path to logs should be set by ansible. Logs should contain date, time and timezone(+3 For example or UTC) and host ip the service running on.


Optional
Create logrotate(standart linux service) for task 3 logs. Period and rotate should be set as variable. Compressing should be set as an option.

![hw21t2p1](https://github.com/Engelko/DevOps_course/blob/HW21/Bash_scripts/HW21/hw21t2p1.png)
![hw21t2p2](https://github.com/Engelko/DevOps_course/blob/HW21/Bash_scripts/HW21/hw21t2p2.png)
![hw21t2p3](https://github.com/Engelko/DevOps_course/blob/HW21/Bash_scripts/HW21/hw21t2p3.png)
![hw21t2p4](https://github.com/Engelko/DevOps_course/blob/HW21/Bash_scripts/HW21/hw21t2p4.png)
![hw21t3p1](https://github.com/Engelko/DevOps_course/blob/HW21/Bash_scripts/HW21/hw21t3p1.png)
![hw21t3p2](https://github.com/Engelko/DevOps_course/blob/HW21/Bash_scripts/HW21/hw12t3p2.png)
![hw21t3p3](https://github.com/Engelko/DevOps_course/blob/HW21/Bash_scripts/HW21/hw21t3p3.png)
