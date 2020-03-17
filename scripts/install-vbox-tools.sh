#!/bin/sh -e

echo Mount the VBoxGuestAdditions.iso
mkdir /tmp/isomount
sudo mount -t iso9660 -o loop /home/vagrant/VBoxGuestAdditions.iso /tmp/isomount

echo Install VBoxLinuxAdditions - check for return code 2 as bug on Virtual Box
sudo /tmp/isomount/VBoxLinuxAdditions.run || [ $? -eq 2 ]

echo Umount VBoxGuestAdditions.iso
sudo umount /tmp/isomount

echo Checking Virtual Box Kernel Object
sudo modinfo vboxguest
