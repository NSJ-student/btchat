#!/bin/bash

$ rfkill list all
$ sudo rfkill unblock bluetooth
$ sudo hciconfig hci0 up
$ sudo bluetoothctl
[bluetooth]# power on
[bluetooth]# discoverable on
[bluetooth]# agent on
[bluetooth]# pairable on
[bluetooth]# scan on
[bluetooth]# scan off
[bluetooth]# connect F4:5E:AB:AA:BB:CC
[bluno]# pair F4:5E:AB:AA:BB:CC
[bluno]# trust F4:5E:AB:AA:BB:CC

sdptool browse 7C:F3:1B:02:C1:82

# after pair to android, add to rfcomm0
sudo rfcomm bind /dev/rfcomm0 7C:F3:1B:02:C1:82 2
