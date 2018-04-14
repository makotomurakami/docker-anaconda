#!/bin/bash

home=$(echo ~)
pwd=$(pwd)
user=$(id -un)
docker run -ti --rm -e DISPLAY=$DISPLAY -e XMODIFIERS=$XMODIFIERS -v /tmp/.X11-unix/:/tmp/.X11-unix -v $home:$home -w $pwd -u $user --privileged -v /dev/video0:/dev/video0 --name anaconda anaconda
