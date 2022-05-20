#!/bin/bash

SCRIPTPATH=$(dirname "$(realpath -s "$0")")
cd "$SCRIPTPATH"

cp "../../code/.pio/build/esp32cam/firmware.bin" "../../firmware/firmware.bin"
cp "../../code/.pio/build/esp32cam/bootloader.bin" "../../firmware/bootloader.bin"
cp "../../code/.pio/build/esp32cam/partitions.bin" "../../firmware/partitions.bin"

zip -r "../../firmware/html.zip" "../../sd-card/html" -q
