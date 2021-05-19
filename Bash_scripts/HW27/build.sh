build_date=$(date +%Y%m%d-%H%M%S)
docker build -t engelko/devops-course/jenkins-docker --build-arg "BUILD_DATE=$build_date" . < Dockerfile
