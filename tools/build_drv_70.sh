#!/bin/bash


# Mostly "borrowed" from http://nemon.org/ipcam-ipr1631x/#SDK

if [ ! -d Hi3518_SDK_V1.0.7.0 ]
then
   echo "SDK not found."
   exit
fi


# Add the toolchain to $PATH
echo "export PATH=/opt/hisi-linux-nptl/arm-hisiv100-linux/target/bin:\$PATH" >> ~/.bashrc
source ~/.bashrc

# Test the toolchain
cd Hi3518_SDK_V1.0.7.0/drv
cd cipher &&  make SNS=ov9712 -j1 V=s
cd ../hidmac && make SNS=ov9712 -j1 V=s
cd ../hisi-irda &&  make SNS=ov9712 -j1 V=s
cd ../hiuser &&  make SNS=ov9712 -j1 V=s
cd ../mmz &&  make SNS=ov9712 -j1 V=s
cd ../rtc &&  make SNS=ov9712 -j1 V=s
cd ../wtdg && make SNS=ov9712 -j1 V=s

