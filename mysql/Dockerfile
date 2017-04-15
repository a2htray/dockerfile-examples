FROM alpine:latest

MAINTAINER a2htray <a2htray.yuen@gmail.com>

RUN apk add --no-cache mysql mysql-client
RUN apk add --update bash

RUN mkdir -p /var/run/mysql
RUN mkdir -p /var/lib/mysql
RUN mkdir -p /etc/mysql/conf.d

COPY my.cnf /etc/mysql/my.cnf
COPY entrypoint.sh /entrypoint.sh

EXPOSE 3306

VOLUME ["/var/lib/mysql"]

ENTRYPOINT ["/entrypoint.sh"]
