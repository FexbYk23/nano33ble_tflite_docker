# Arduino Nano 33 BLE Sense T Template

Command line based template for running tflite-micro applications on the Arduino Nano 33 BLE Sense using docker.

The code in the template folder is taken from [tflite-micro-arduino-examples](https://github.com/tensorflow/tflite-micro-arduino-examples/tree/main/examples/micro_speech).

## USAGE

1. Plug in the device via USB
2. Find out which port it's connected to by running `./port.sh`
3. Run `./upload.sh [PORT]` to upload the program to the device, if no port is given the script will default to /dev/ttyACM0

