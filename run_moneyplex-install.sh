#!/bin/bash
VERSION=20
docker run --rm -it \
  -h $HOSTNAME \
  -v $HOME/.Xauthority:/home/user/.Xauthority \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v $HOME/moneyplex:/home/user/moneyplex \
  -e DISPLAY=$DISPLAY \
  moneyplex:$VERSION /home/user/install/moneyplex_setup64
