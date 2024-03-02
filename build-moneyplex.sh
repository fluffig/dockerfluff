#!/bin/bash
VERSION=20
docker pull ubuntu:jammy
docker build -t moneyplex:$VERSION -f Dockerfile-moneyplex-$VERSION . | tee $(date +%Y%m%d-%H%M)-moneyplex-$VERSION.log
