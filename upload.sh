#!/bin/bash
if [ $# -eq 0 ]
  then
	echo "No device supplied, defaulting to /dev/ttyACM0"
	DEVICE=/dev/ttyACM0
  else
	DEVICE=$1
fi

docker build -t nano33ble .
docker run --privileged --env DEVICE=$DEVICE nano33ble
