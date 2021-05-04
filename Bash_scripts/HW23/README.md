# Ansible. Do for ubuntu and centos hosts.

###  1.	Difference between ansible module: command, shell and raw
###  2.	Create a role hw23. Inside the role:
    
      a.	Create file /opt/hw23_test_file. Set 644 permissions
    
      b.	Do in 2 ways. Rename the file /opt/hw23_test_file to hw23_test_file_exists if file exists(/opt/hw23_test_file) otherwise print debug message that FILE_NAME does not exist.
   
      c.	Create link /opt/hw23_link to /etc/hosts
    
      d.	If  /opt/hw23_link is a link, rename it to hw23_test_file_link. otherwise print debug message that FILE_NAME does not exist or not a link
    
      e.	Run ansible twice to test both cases
###  3.	Inside the role hw23 create separate tasks file hw23_1.yml:
   
      a.	Move packages installation from previous HWs to block sections with adding installation of latest nginx version. Use handlers to restart docker and nginx services.
   
      b.	Create 2 tasks  - one which should have rc=0(set as a variable) another one with rc=2(set as a variable). Print debug message with the task name and rc(use register  and when)
 
###  4.	Update hw23_1.yml. Add validation of nginx service. Check nginx process is running. If not - restart nginx right after you found that no process exists ad print last 20 lines of nginx log with debug. 

Optional:
1.	Print versions of all installed packages
2.	Separately print list of all installed kernels


![hw23t2a](https://github.com/Engelko/DevOps_course/blob/HW23/Bash_scripts/HW23/hw23t2a.png)
![hw23t2b1](https://github.com/Engelko/DevOps_course/blob/HW23/Bash_scripts/HW23/hw23t2b1.png)
![hw23t2b2](https://github.com/Engelko/DevOps_course/blob/HW23/Bash_scripts/HW23/hw23t2b2.png)
![hw23t2c](https://github.com/Engelko/DevOps_course/blob/HW23/Bash_scripts/HW23/hw23t2c.png)
![hw23t2d1](https://github.com/Engelko/DevOps_course/blob/HW23/Bash_scripts/HW23/hw23t2d1.png)
![hw23t2d2](https://github.com/Engelko/DevOps_course/blob/HW23/Bash_scripts/HW23/hw23t2d2.png)
