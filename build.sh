#!/bin/sh

export FFMPEG_VERSION=6.0

docker build --build-arg FFMPEG_VERSION -t lambda-go-ffmpeg:latest .
docker run --rm lambda-go-ffmpeg:latest cat /tmp/ffmpeg-${FFMPEG_VERSION}.zip > ./layer.zip
