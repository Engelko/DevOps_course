FROM ubuntu:20.04
RUN apt-get update && apt-get install -y iputils-ping
COPY ./script /app
RUN chmod +x /app/bash_script_3.sh
ENTRYPOINT ["/bin/bash", "./app/bash_script_3.sh"]
