#!/bin/bash

if [ ! -f /var/lib/mysql/ibdata1 ]; then
  mysql_install_db
fi

mysqld

exec "$@"
