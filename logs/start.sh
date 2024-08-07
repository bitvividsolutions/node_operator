#! /bin/bash

docker run --net=host  -d --restart=always   --name=log-dipatcher-1 -e DEBUG=1 -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME:$HOME  -v /media/vdata/logs/:/media/vdata/logs/ -w / -e DISPLAY=$DISPLAY --log-driver local --log-opt max-size=10m xconnected/components:itms-logs-dispatcher-0.3 python3 dispatcher.py /media/vdata/logs/ http://10.71.5.3/api-itms/v1/logs/ json http://10.71.5.3/api-itms/v1/specialVehicle/  http://10.71.5.3/auth/realms/XconnectedAuthentication/protocol/openid-connect/token  system  system@123 node NGEzna22kqqBDaAqj8lvsiEWZ4jhZrNv



