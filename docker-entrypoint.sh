#!/usr/bin/env bash

DEFAULT_TZ="Asia/Shanghai"
if [ -z "$TZ" ]; then
 export TZ="$DEFAULT_TZ"
fi
echo "TZ: $TZ"

ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

npm start

