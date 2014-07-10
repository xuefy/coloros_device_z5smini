#! /system/bin/sh
VALUE=$(/system/bin/getprop "sys.cpumode")
echo $VALUE > /sys/class/thermal/thermal_zone0/mode
echo $VALUE > /sys/class/thermal/thermal_zone1/mode
echo $VALUE > /sys/class/thermal/thermal_zone2/mode
echo $VALUE > /sys/class/thermal/thermal_zone3/mode
echo $VALUE > /sys/class/thermal/thermal_zone4/mode
echo $VALUE > /sys/class/thermal/thermal_zone5/mode
echo $VALUE > /sys/class/thermal/thermal_zone6/mode
echo $VALUE > /sys/class/thermal/thermal_zone7/mode
echo $VALUE > /sys/class/thermal/thermal_zone8/mode
echo $VALUE > /sys/class/thermal/thermal_zone9/mode
echo $VALUE > /sys/class/thermal/thermal_zone10/mode

