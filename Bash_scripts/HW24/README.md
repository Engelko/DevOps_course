# Create bash script to run ansible-playbook
## 1.	Split your inventory file into two files and use both to run your playbook

## 2.	You should update the previous playbook. Create a user with a password. Use ansible vault. Keep password in vault.yml file. Also add to the user's home folder ./authorized_keys 2 random public keys.

## 3.	Add tag to previous task to skip adding the user. Test it.

## 4.	Add a new task to update all packages for your OS. Make it optional using tag.

## 5.	Play with ./meta. In previous HW you have 2 roles. Make it obligatory to run one of the roles prior to another one.

## 6.	Use host template to run ansible playbook( do not put it to script)

## 7.	Update your previous playbook. Add 3 additional users to be created(all without sudo). Use loop. Run user creation only if the amount of users does not exceed 3. 

## 8.	Which tools can you use to validate your playbook syntax?

## 9.	How to change ansible deployment strategy to FREE? 2 ways.

## 10.	Using ansible generate a file with current date on your local machine and spray it to remote services

## 11.	How to add a new instance to a play during your play?

## 12.	Create a task which will be skipped for only one of your hosts. Print message about this.

## 13.	Create a task which will be skipped for a group of you hosts. Print message about this

## 14.	Add a task to check internet access for remote hosts. If false for at least one host - stop your play

## 15.	Install any random package with checking checksum_algorithm. Do not fail at the task but print a message about this.

## 16.	How to hide task output?

## 17.	How to run the same role twice? 2 options



![hw24t1](https://github.com/Engelko/DevOps_course/blob/HW24/Bash_scripts/HW24/hw24t1.png)
![hw24t2](https://github.com/Engelko/DevOps_course/blob/HW24/Bash_scripts/HW24/hw24t2.png)
![hw24t3](https://github.com/Engelko/DevOps_course/blob/HW24/Bash_scripts/HW24/hw24t3.png)
![hw24t4](https://github.com/Engelko/DevOps_course/blob/HW24/Bash_scripts/HW24/hw24t4.png)
![hw24t5](https://github.com/Engelko/DevOps_course/blob/HW24/Bash_scripts/HW24/hw24t5.png)
![hw24t7](https://github.com/Engelko/DevOps_course/blob/HW24/Bash_scripts/HW24/hw24t7.png)
![hw24t8](https://github.com/Engelko/DevOps_course/blob/HW24/Bash_scripts/HW24/hw24t8.png)
![hw24t9p1](https://github.com/Engelko/DevOps_course/blob/HW24/Bash_scripts/HW24/hw24t9p1.png)
![hw24t9p2](https://github.com/Engelko/DevOps_course/blob/HW24/Bash_scripts/HW24/hw24t9p2.png)
![hw24t10p1](https://github.com/Engelko/DevOps_course/blob/HW24/Bash_scripts/HW24/hw24t10p1.png)
![hw24t10p2](https://github.com/Engelko/DevOps_course/blob/HW24/Bash_scripts/HW24/hw24t10p2.png)
![hw24t12](https://github.com/Engelko/DevOps_course/blob/HW24/Bash_scripts/HW24/hw24t12.png)
![hw24t13](https://github.com/Engelko/DevOps_course/blob/HW24/Bash_scripts/HW24/hw24t13.png)
![hw24t14](https://github.com/Engelko/DevOps_course/blob/HW24/Bash_scripts/HW24/hw24t14.png)
![hw24t15](https://github.com/Engelko/DevOps_course/blob/HW24/Bash_scripts/HW24/hw24t15.png)
![hw24t16](https://github.com/Engelko/DevOps_course/blob/HW24/Bash_scripts/HW24/hw24t16.png)
![hw24t16p1](https://github.com/Engelko/DevOps_course/blob/HW24/Bash_scripts/HW24/hw23t16p1.png)
![hw24t16p2](https://github.com/Engelko/DevOps_course/blob/HW24/Bash_scripts/HW24/hw23t16p2.png)
