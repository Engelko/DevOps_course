FROM ubuntu:20.04 AS hw18ubn
WORKDIR /ubn
RUN touch ubuntuone && echo "HW18 task 3 complete!" > ubuntuone


FROM alpine:latest
WORKDIR /ubn2
COPY --from=hw18ubn /ubn/ubuntuone .
ENTRYPOINT ["cat", "ubuntuone"]
