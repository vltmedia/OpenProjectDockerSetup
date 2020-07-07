#!/bin/sh

docker run -d -p 8888:80 --name openproject -e SECRET_KEY_BASE=secret \
  -v /var/lib/openproject/pgdata:/var/openproject/pgdata \
  -v /var/lib/openproject/static:/var/openproject/assets \
  openproject/community:10