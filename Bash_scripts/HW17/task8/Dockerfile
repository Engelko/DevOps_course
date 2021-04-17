#I created new image with installing docker hw17doc using commit command
FROM hw17doc
COPY . /app
RUN chmod +x /app/doc_ps_img_script.sh
ENTRYPOINT ["/bin/bash", "./app/doc_ps_img_script.sh"]

