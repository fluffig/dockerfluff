#!/bin/bash
docker run -it \
  -h $HOSTNAME \
  -v $HOME/.Xauthority:/home/user/.Xauthority \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v ./app:/home/user/moneyplex \
  -e DISPLAY=$DISPLAY \
  moneyplex:20 bash
