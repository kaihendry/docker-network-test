FROM alpine

RUN apk add --no-cache \
	curl \
	bash \
	busybox-extras # telnet

COPY motd /etc/motd
RUN echo "[ ! -z \"\$TERM\" -a -r /etc/motd ] && cat /etc/motd" >> /etc/bash/bashrc
