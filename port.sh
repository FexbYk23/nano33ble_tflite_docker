#!/bin/bash
docker build --target arduino-base -t nano33ble:base .
docker run --privileged nano33ble:base arduino-cli board list
