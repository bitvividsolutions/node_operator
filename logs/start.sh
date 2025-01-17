#! /bin/bash

# docker run --net=host  -d --restart=always   --name=log-dipatcher-1 -e DEBUG=1 -e TZ=Asia/Kolkata -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME:$HOME  -v /media/vdata/logs/:/media/vdata/logs/ -w / -e DISPLAY=$DISPLAY --log-driver local --log-opt max-size=10m xconnected/components:itms-logs-dispatcher-0.3 python3 dispatcher.py /media/vdata/logs/ http://10.71.5.3/api-itms/v1/logs/ json http://10.71.5.3/api-itms/v1/specialVehicle/  http://10.71.5.3/auth/realms/XconnectedAuthentication/protocol/openid-connect/token  system  system@123 node NGEzna22kqqBDaAqj8lvsiEWZ4jhZrNv



echo your_pat | docker login -u xconnected --password-stdin && docker pull xconnected/components:itms-logs-dispatcher-0.5 && sudo mkdir -p /media/vdata/backlogs && docker run --net=host  -d --restart=always   --name=logs-dispatcher-1 -e DEBUG=1 -e TZ=Asia/Kolkata -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME:$HOME  -v /media/vdata/logs/:/media/vdata/logs/ -v /media/vdata/backlogs:/media/vdata/backlogs -w / -e DISPLAY=$DISPLAY --log-driver local --log-opt max-size=10m -e MINIO_ENDPOINT=10.72.5.6:9000 -e MINIO_ACCESS_KEY=your_minio_secret  -e MINIO_SECRET_KEY=your_minio_secret -e MONGODB_CONNECTION_URL=your_mongodb -e MAX_BATCH_SIZE=25 xconnected/components:itms-logs-dispatcher-0.5 python itms_logs_dispatcher.py 



