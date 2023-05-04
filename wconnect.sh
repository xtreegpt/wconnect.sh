#!/bin/bash

echo "select 1 for mediasonic or 2 for realtek
read WADAPT

case $WADAPT in
  1) 
    modprobe mt7921u
    echo 3574 6211 > /sys/bus/usb/drivers/mt7921u/new_id
    ;;
  2) 
    modprobe 88x2bu
    ;;
ecase
nmcli dev set wlan0 managed no
nmcli dev wifi
sleep 15
nmcli dev wifi connect IBM1VZ6 password "51%mHM7z25Et971k"
