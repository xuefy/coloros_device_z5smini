#! /system/bin/sh
GOVERNOR=$(/system/bin/getprop "sys.governor")
PATH=$(/system/bin/getprop "sys.governorpath")
echo $GOVERNOR > $PATH
