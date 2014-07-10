#! /system/bin/sh
BOOTABLE=$(/system/bin/getprop "sys.bootable")
PKG=$(/system/bin/getprop "sys.pkg")
CLS=$(/system/bin/getprop "sys.cls")
pm $BOOTABLE $PKG/$CLS
