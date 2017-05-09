FROM alpine:latest

MAINTAINER a2htray <a2htray.yuen@gmail.com>

RUN apk add --no-cache mysql mysql-client
RUN apk add --update bash
RUN apk add --no-cache apache2 apache2-utils
RUN apk add --no-cache curl
RUN apk add --no-cache imagemagick \
        ghostscript \
        # Install php (cli/fpm)
        php5-cli \
        php5-fpm \
        php5-json \
        php5-intl \
        php5-curl \
        php5-mysql \
        php5-mysqli \
        php5-pdo_mysql \
        php5-pdo_sqlite \
        php5-mcrypt \
        php5-gd \
        php5-bcmath \
        php5-soap \
        php5-sqlite3 \
        php5-bz2 \
        php5-calendar \
        php5-ctype \
        php5-pcntl \
        php5-posix \
        php5-sockets \
        php5-sysvmsg \
        php5-sysvsem \
        php5-sysvshm \
        php5-xmlreader \
        php5-exif \
        php5-ftp \
        php5-gettext \
        php5-iconv \
        php5-zip \
        php5-zlib \
        php5-shmop \
        php5-wddx \
        sqlite \
        php5-xmlrpc \
        php5-xsl \
        geoip \
        php5-ldap \
        php5-memcache \
        # php5-redis \
        php5-pear \
        php5-phar \
        php5-openssl \
        php5-apcu \
    && pear channel-update pear.php.net \
    && pear upgrade-all \
    && pear config-set auto_discover 1 \
    && sed -i "s/ -n / /" $(which pecl)

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin/ --filename=composer


RUN mkdir -p /var/run/mysql
RUN mkdir -p /var/lib/mysql
RUN mkdir -p /etc/mysql/conf.d

COPY cnf/my.cnf /etc/mysql/my.cnf
COPY entrypoint.sh /entrypoint.sh

EXPOSE 3306 80 443

VOLUME ["/var/lib/mysql"]

ENTRYPOINT ["/entrypoint.sh"]
