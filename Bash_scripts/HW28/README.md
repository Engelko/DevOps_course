# Jenkins


### 1.	Create DSL pipeline to validate shell scripts(all .sh scripts under provided location). You can use your previous scripts. Checker tool - https://github.com/koalaman/shellcheck(you can use any you like)

### 2.	Create DSL pipeline to validate Dockerfile. Use https://github.com/projectatomic/dockerfile_lint or anything else you like. Dockerfile to validate - Dockerfile you use to build image for jenkins

### 3.	Update previous DSL with new stage - build new jenkins image(Only if lint successful). Tag - ${VERSION}_${GIT_HASH}_{JENKINS_BUILD_NUMBER}.  ${VERSION} -  should be set as parameter.

### 4.	Update previous pipeline with new stage - push docker to your registry. It should be a private image, so provide creds(as jenkins secret) for docker login.

### 5.	Do previous task as a separate pipeline. It should be triggered after successful linting.

### 6.	Create multibranch pipeline to validate your PRs with your Jenkinsfile created above

## Optional: Add docker image linting

![hw28t1](https://github.com/Engelko/DevOps_course/blob/HW28/Bash_scripts/HW28/hw28t1.png)
![hw28t1p1](https://github.com/Engelko/DevOps_course/blob/HW28/Bash_scripts/HW28/hw28t1p1.png)
![hw28t1p2](https://github.com/Engelko/DevOps_course/blob/HW28/Bash_scripts/HW28/hw28t1p2.png)
![hw28t1p3](https://github.com/Engelko/DevOps_course/blob/HW28/Bash_scripts/HW28/hw28t1p3.png)
![hw28t1p4](https://github.com/Engelko/DevOps_course/blob/HW28/Bash_scripts/HW28/hw28t1p4.png)
![hw28t2](https://github.com/Engelko/DevOps_course/blob/HW28/Bash_scripts/HW28/hw28t2.png)
![hw28t2p1](https://github.com/Engelko/DevOps_course/blob/HW28/Bash_scripts/HW28/hw28t2p1.png)
![hw28t2p2](https://github.com/Engelko/DevOps_course/blob/HW28/Bash_scripts/HW28/hw28t2p2.png)
![hw28t2p3](https://github.com/Engelko/DevOps_course/blob/HW28/Bash_scripts/HW28/hw28t2p3.png)
![hw28t3p1](https://github.com/Engelko/DevOps_course/blob/HW28/Bash_scripts/HW28/hw28t3p1.png)
![hw28t3p2](https://github.com/Engelko/DevOps_course/blob/HW28/Bash_scripts/HW28/hw28t3p2.png)
![hw28t4p1](https://github.com/Engelko/DevOps_course/blob/HW28/Bash_scripts/HW28/hw28t4p1.png)
![hw28t4p2](https://github.com/Engelko/DevOps_course/blob/HW28/Bash_scripts/HW28/hw28t4p2.png)
![hw28t5p1](https://github.com/Engelko/DevOps_course/blob/HW28/Bash_scripts/HW28/hw28t5p1.png)
![hw28t5p2](https://github.com/Engelko/DevOps_course/blob/HW28/Bash_scripts/HW28/hw28t5p2.png)
![hw28t6p1](https://github.com/Engelko/DevOps_course/blob/HW28/Bash_scripts/HW28/hw28t6p1.png)
![hw28t6p2](https://github.com/Engelko/DevOps_course/blob/HW28/Bash_scripts/HW28/hw28t6p2.png)
