#!/bin/bash


# Mostly "borrowed" from http://nemon.org/ipcam-ipr1631x/#SDK

if [ ! -d Hi3518_SDK_V1.0.9.0 ]
then
   echo "SDK not found."
   exit
fi


# Add the toolchain to $PATH
echo "export PATH=/opt/hisi-linux-nptl/arm-hisiv100-linux/target/bin:\$PATH" >> ~/.bashrc
source ~/.bashrc

# Test the toolchain
#cd ../../../mpp2/sample/ && make

echo "to switch from default /bin/sh from dash to bash -> dpkg-reconfigure dash"

cd Hi3518_SDK_V1.0.9.0/osdrv
#SHELL := /bin/bash
make OSDRV_CROSS=arm-hisiv100nptl-linux CHIP=hi3518c SNS=ov9712 all

