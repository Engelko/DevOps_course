FROM alpine:latest
RUN apk update \
	&& apk --no-cache add curl \
	&& apk add tcpdump  \
	&& apk add tcptraceroute \
	&& apk add netcat-openbsd \
	&& apk add vim \
	&& apk add mysql mysql-client \
	&& apk add python3 \
	&& apk add go \
	&& rm -rf /var/lib/apt/lists/*
