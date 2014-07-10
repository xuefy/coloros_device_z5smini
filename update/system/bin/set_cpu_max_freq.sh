#! /system/bin/sh
FREQVALUE=$(/system/bin/getprop "sys.cpu")
PATH=$(/system/bin/getprop "sys.cpupath")
echo $FREQVALUE > $PATH
