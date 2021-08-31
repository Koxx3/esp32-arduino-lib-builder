#!/bin/bash
source ./tools/config.sh

ESP32_ARDUINO=/storage_sec/esp32-arduino-lib-builder/arduino-esp32/

if ! [ -d "$ESP32_ARDUINO" ]; then
	echo "ERROR: Target arduino folder does not exist!"
	exit 1
fi

rm -rf $ESP32_ARDUINO/tools/sdk
cp -Rf $AR_SDK $ESP32_ARDUINO/tools/sdk
cp -f $AR_ESPTOOL_PY $ESP32_ARDUINO/tools/esptool.py
cp -f $AR_GEN_PART_PY $ESP32_ARDUINO/tools/gen_esp32part.py
cp -f $AR_PLATFORMIO_PY $ESP32_ARDUINO/tools/platformio-build.py
cp -f $AR_PLATFORM_TXT $ESP32_ARDUINO/platform.txt
