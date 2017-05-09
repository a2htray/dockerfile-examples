#!/bin/bash


function init_db()
{
	if [ ! -f /var/lib/mysql/ibdata1 ]; then
  		mysql_install_db
	fi
}



init_db()

exec "$@"
