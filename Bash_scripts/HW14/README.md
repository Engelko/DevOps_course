Read docker docs(links are in slides)
 
 1.	Run container from ubuntu image
  a.	Login to this container
  b.	Create file /sizefile with size 1GB
  c.	Check docker container size(RW layer and virtual size)
  d.	Delete container

2.	Create your own image hw14 based on ubuntu image
  a.	For this use Dockerfile
  b.	Add file /sizefile with size =1GB to Dockerfile
  c.	Run container from hw14 images
  d.	Check docker container size(RW layer and virtual size)
  e.	Push your image to your docker hub account(create if account does not exist)

3.	Run containers from ubuntu image
  a.	With first mount use bind mount
  b.	With second run use volume mount

4.	Run nginx container from nginx image.
  a.	Map 8081 port to 80 port of nginx container. Check it
  b.	Do not use a particular port and get any random port mapped to 80 port of your nginx container.

![hw14p1](https://github.com/Engelko/DevOps_course/blob/main/Bash_scripts/HW14/HW14p1.png)
![hw14p1_2](https://github.com/Engelko/DevOps_course/blob/main/Bash_scripts/HW14/HW14p1_2.png)
![hw14p2](https://github.com/Engelko/DevOps_course/blob/main/Bash_scripts/HW14/HW14p2.png)
![hw14p2_2](https://github.com/Engelko/DevOps_course/blob/main/Bash_scripts/HW14/HW14p2_2.png)
![hw14p2_3](https://github.com/Engelko/DevOps_course/blob/main/Bash_scripts/HW14/HW14p2_3.png)
![hw14p2_4](https://github.com/Engelko/DevOps_course/blob/main/Bash_scripts/HW14/hw14p2_4.png)
![hw14p3](https://github.com/Engelko/DevOps_course/blob/main/Bash_scripts/HW14/hw14p3.png)
![hw14p3_2](https://github.com/Engelko/DevOps_course/blob/main/Bash_scripts/HW14/hw14p3_2.png)
![hw14p3_3](https://github.com/Engelko/DevOps_course/blob/main/Bash_scripts/HW14/hw14p3_3.png)
![hw14p4](https://github.com/Engelko/DevOps_course/blob/main/Bash_scripts/HW14/hw14p4.png)
![hw14p4_2](https://github.com/Engelko/DevOps_course/blob/main/Bash_scripts/HW14/hw14p4_2.png)

