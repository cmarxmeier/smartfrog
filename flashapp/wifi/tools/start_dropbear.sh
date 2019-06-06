#!/bin/sh
# Lets remount /etc to get writable - and set new root pwd
# copy over /etc to /flashapp/wifi/tools/etc before and reboot :D
# this way dropbear also has standard config-dirs 
 mount --bind /app/wifi/tools/etc /etc
cd /app/wifi/tools
./dropbear -B -R
