#! /system/bin/sh
FREQ=$(/system/bin/getprop "sys.gpu")
echo $FREQ > /sys/devices/platform/kgsl-3d0.0/kgsl/kgsl-3d0/max_gpuclk
