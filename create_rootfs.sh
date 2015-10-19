#!/bin/sh

rm -rf rootfs
mkdir rootfs

USER=`id -u`

mkdir -p rootfs/usr
mkdir -p rootfs/tmp
mkdir -p rootfs/app
mkdir -p rootfs/run
mkdir -p rootfs/run/host
mkdir -p rootfs/run/dbus
mkdir -p rootfs/run/media
mkdir -p rootfs/run/user
mkdir -p rootfs/run/user/$USER
mkdir -p rootfs/run/user/$USER/pulse
mkdir -p rootfs/run/user/$USER/dconf
mkdir -p rootfs/run/user/$USER/xdg-app-monitor
touch    rootfs/run/user/$USER/pulse/native
mkdir -p rootfs/var
ln -s /tmp rootfs/var/tmp
ln -s /run rootfs/var/run
ln -s usr/lib rootfs/lib
ln -s usr/bin rootfs/bin
ln -s usr/sbin rootfs/sbin
mkdir -p rootfs/etc
touch  rootfs/etc/passwd
touch  rootfs/etc/group
ln -s "/run/user/$USER/xdg-app-monitor/resolv.conf" rootfs/etc/resolv.conf
touch rootfs/etc/machine-id
mkdir -p rootfs/tmp/.X11-unix
mkdir -p rootfs/tmp/.X11-unix/X99
mkdir -p rootfs/proc
mkdir -p rootfs/sys
mkdir -p rootfs/sys/block
mkdir -p rootfs/sys/bus
mkdir -p rootfs/sys/class
mkdir -p rootfs/sys/dev
mkdir -p rootfs/sys/devices
mkdir -p rootfs/dev
mkdir -p rootfs/dev/pts
mkdir -p rootfs/dev/shm
mkdir -p rootfs/dev/dri
