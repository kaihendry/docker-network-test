FROM alpine

RUN apk add --no-cache \
	curl \
	bash \
	make \
	busybox-extras # telnet

COPY motd /etc/motd
COPY Makefile /Makefile

RUN curl -sf https://gobinaries.com/tj/mmake/cmd/mmake | sh

RUN echo "alias make=mmake" >> /etc/bash/bashrc
RUN echo "[ ! -z \"\$TERM\" -a -r /etc/motd ] && cat /etc/motd" >> /etc/bash/bashrc
