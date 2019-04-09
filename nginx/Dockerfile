FROM debian:stretch-slim

MAINTAINER a2htray <a2htray.yuen@gmail.com>

ENV NGINX_VERSION 1.14.2-1~stretch

RUN set x && \
	dependencies="wget gnupg1 apt-transport-https ca-certificates" && \
	apt-get update && \
	apt-get install -y --no-install-recommends --no-install-suggests ${dependencies} && \
	echo deb http://nginx.org/packages/debian/ stretch nginx >> /etc/apt/sources.list && \
	echo deb-src http://nginx.org/packages/debian/ stretch nginx >> /etc/apt/sources.list && \
	wget http://nginx.org/keys/nginx_signing.key && \
	apt-key add nginx_signing.key && \
	apt-get update && \
	apt-get install --no-install-recommends --no-install-suggests nginx=${NGINX_VERSION} && \
	apt-get remove --purge --auto-remove -y ${dependencies}

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
