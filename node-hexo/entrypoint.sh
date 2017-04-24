#!/bin/bash

set -e

if [ ! -f "/workspase/_config.yml" ]; then 
	cd /workspace && hexo init
fi

exec "$@"