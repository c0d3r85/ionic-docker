#!/bin/bash

if [ "$#" -ne 1 ]; then
echo "Usage: $0 <project_root>"
exit 1
fi

DOCKER_MOUNT_POINT=/workspace/project
docker run -it -v $1:${DOCKER_MOUNT_POINT} -u `id -g $USER`:`id -g $USER` -e HOME=${DOCKER_MOUNT_POINT} -w ${DOCKER_MOUNT_POINT} -p 127.0.0.1:80:8100 -p 127.0.0.1:35729:35729 ionic-docker

