#!/bin/bash
set -ev

# Get arduino sdk
wget https://downloads.arduino.cc/arduino-1.8.5-linux64.tar.xz
tar xf arduino-1.8.5-linux64.tar.xz
cd arduino-1.8.5/hardware

# Additionally get the ESP toolchain
mkdir espressif && cd espressif
git clone https://github.com/espressif/arduino-esp32 esp32
cd esp32
git submodule update --init --recursive
python tools/get.py