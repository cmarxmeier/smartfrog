#!/bin/sh

#connect wifi
killall -9 wpa_supplicant
./wpa_supplicant -Dwext -iwlan0 -c./wpa_supplicant.conf&
sleep 20
udhcpc -i wlan0
