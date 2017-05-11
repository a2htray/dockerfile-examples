FROM node:latest

MAINTAINER a2htray <a2htray.yuen@gmail.com>

RUN npm install -g hexo-cli
RUN apk add --no-cache git
RUN apk add --no-cache openssl

COPY entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh

RUN mkdir /root/.ssh

VOLUME ["/workspace", "/root/.ssh"]

EXPOSE 4000

ENTRYPOINT ["/entrypoint.sh"]
