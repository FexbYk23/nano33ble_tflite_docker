FROM ubuntu as arduino-base

# Dependencies
RUN apt update && apt install -y curl git
RUN curl -fsSL https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | sh
RUN arduino-cli core update-index && arduino-cli core install arduino:mbed_nano

# tflite-micro
WORKDIR /root/Arduino/libraries
RUN git clone https://github.com/tensorflow/tflite-micro-arduino-examples Arduino_TensorFlowLite
WORKDIR ../../..

FROM arduino-base as compiling
COPY template template
RUN arduino-cli compile --fqbn arduino:mbed_nano:nano33ble template

# Upload
CMD ["sh", "-c", "arduino-cli upload -p $DEVICE --fqbn arduino:mbed_nano:nano33ble template"]
