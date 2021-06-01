#!/bin/sh
sudo modprobe option
sleep 1
sudo sh -c 'echo "2c7c 6002" > /sys/bus/usb-serial/drivers/option1/new_id'
sleep 1
sudo /usr/sbin/pppd call quectel-ppp &
