#! /system/bin/sh
VALUE=$(/system/bin/getprop "sys.gpumode")
echo $VALUE > /sys/class/thermal/thermal_zone2/mode
echo $VALUE > /sys/class/thermal/thermal_zone7/mode
echo $VALUE > /sys/class/thermal/thermal_zone8/mode
echo $VALUE > /sys/class/thermal/thermal_zone9/mode
echo $VALUE > /sys/class/thermal/thermal_zone10/mode
