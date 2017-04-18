FROM alpine

MAINTAINER a2htray <a2htray.yuen@gmail.com>

ENV VERSION=v6.10.2
ENV PACKAGES=gulp

RUN apk add --no-cache bash
RUN apk add --no-cache build-base curl make gcc g++ python linux-headers binutils-gold gnupg libstdc++
RUN curl -sSLO https://nodejs.org/dist/${VERSION}/node-${VERSION}.tar.gz
RUN tar -zxvf node-${VERSION}.tar.gz
RUN cd node-${VERSION}

WORKDIR /node-${VERSION}

RUN ./configure --prefix=/usr
RUN make && make install

RUN npm install -g ${PACKAGES}

WORKDIR /

RUN rm -rf /node-${VERSION}* /var/cache/apk/*
RUN apk del curl make gcc g++ python linux-headers binutils-gold gnupg

COPY helloworld.js /helloworld.js

RUN mkdir -p /workspace

VOLUME ["/workspace"]

EXPOSE 4000

CMD ["node", "helloworld.js"]