#!/bin/bash

set -e

if [ ! -f "/workspase/_config.yml" ]; then 
	cd /workspace && hexo init
fi

cd /workspace && npm install hexo --save

exec "$@"