#! /bin/bash

NAME=jmeter_mqtt_influx
VERSION="1.0"                                                                                                                                            TAG="jmeter-alpine:"$VERSION 

docker run -it -d --network=host --volume="$HOME/.Xauthority:/root/.Xauthority:rw" --volume=/tmp/.X11-unix:/tmp/.X11-unix:ro -e DISPLAY=$DISPLAY $TAG
