#! /bin/bash

docker run --net=host  -d --restart=always  --name=log-dipatcher-1 -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME:$HOME  -v /media/vdata/logs/:/media/vdata/logs/ -w / -e DISPLAY=$DISPLAY --log-driver local --log-opt max-size=10m bitvividtac/itms:bitvivid-itms-logs-dispatcher-0.2 python3 dispatcher.py /media/vdata/logs/ http://192.168.100.92:4101/v1/logs/  1  http 192.168.100.92 9200 elastic changeme http://192.168.100.92:8080/realms/XconnectedAuthentication/protocol/openid-connect/token  admin@admin.com  admin123 nestjs-client 3GrdLrWRYDgUsd729N7LI4zs5PV4dFk6 json



