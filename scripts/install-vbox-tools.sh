#!/bin/sh -e

echo Mount the VBoxGuestAdditions.iso
mkdir /tmp/isomount
sudo mount -t iso9660 -o loop /tmp/VBoxGuestAdditions.iso /tmp/isomount

echo Install VBoxLinuxAdditions
sudo /tmp/isomount/VBoxLinuxAdditions.run

echo Umount VBoxGuestAdditions.iso
sudo umount /tmp/isomount
