#!/bin/bash
NAME=$1
CID=`docker ps -a |grep ${NAME} |cut -d' ' -f1`
if [ "${CID}" != "" ]; then
  docker stop ${CID} && docker rm ${CID} && rm /var/run/docker-${NAME}.cid
  docker rmi ${NAME}
fi
