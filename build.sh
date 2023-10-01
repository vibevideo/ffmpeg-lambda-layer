#!/bin/sh

export FFMPEG_VERSION=6.0

docker build --build-arg FFMPEG_VERSION -t lambda-provided-ffmpeg:latest .
docker run -it --rm --name ffmpeg -d lambda-provided-ffmpeg:latest 
docker cp ffmpeg:/tmp/ffmpeg-${FFMPEG_VERSION}.zip ./layer-ffmpeg-6.0.zip
docker stop ffmpeg
