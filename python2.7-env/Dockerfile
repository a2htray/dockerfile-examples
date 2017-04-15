FROM alpine

MAINTAINER a2htray <a2htray.yuen@gmail.com>


COPY requirements.txt /requirements.txt

RUN apk add --no-cache python python-dev py-pip && \
	pip install --upgrade pip && \
	pip install virtualenv && \
	virtualenv /root/venv && \
	source /root/venv/bin/activate && \
	pip install -r /requirements.txt

RUN apk add --no-cache bash

VOLUME ["/root/venv"]