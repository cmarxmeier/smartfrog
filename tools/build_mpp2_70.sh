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
cd Hi3518_SDK_V1.0.7.0/mpp2/sample/ && make -j1 V=s
cd ../tools && make -j1 V=s
