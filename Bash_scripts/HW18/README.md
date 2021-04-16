1. Read about YAML and JSON format
https://www.w3schools.com/whatis/whatis_json.asp
https://www.infoworld.com/article/3222851/what-is-json-a-better-format-for-data-exchange.html
https://blog.stackpath.com/yaml/
https://www.geeksforgeeks.org/what-is-the-difference-between-yaml-and-json/

2. How to get docker runtime resource metrics?

3. Create multi stage build https://docs.docker.com/develop/develop-images/multistage-build/ :
Create docker file:
	1. Create file ubuntuone from UBUNTU image
	2. As a second image use Alpine. Put ubuntuone file from previous stage to / of your new image. Container created from this image should print contact of the ubuntuone file

4. Create a docker compose file:

1.	Set image tag as a variable(variables should be provided in 2 ways)
2.	Set MEM and CPU limits for your container
3.	Create Dockerfile with base Alpine  image. Image should contain:
ping, curl, tcpdump, traceroute, nc, vim, mysql client, python 3.9, golang latest version
4.	Run compose in 2 ways: Building using docker file from point 3 and from ready image.
5.	When container is running it should print GO and Python version
6.	Set custom DNS for your service


Optional:
Create docker-compose file with 2 container with 2 separate custom networks. Both custom networks should be declared at the same docker file.
