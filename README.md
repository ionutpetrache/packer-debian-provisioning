# Provision Debian with preseed and packer

## Tools needed to be able to create a Debian virtual machine

1. virtualbox: `brew cask install virtualbox`
2. packer: `brew install packer`

## How to start the build process

`packer build packer-debian-10-virtualbox.json`

## How to find the responses for a preseed file

1. Do a manual installation of Debian
2. After the installation check the following files:
* `/var/log/installer/cdebconf/templates.dat`
* `/var/log/installer/cdebconf/questions.dat`
* `var/log/installer/cdebconf`
3. Install debconf-utils package
4. Get current debconf settings: `debconf-get-selections --installer`
5. Get current debconf settings for the installed packages: `debconf-get-selections`
6. More information on [full preseed examples](https://jack.einval.com/debian-preseed/)

## Validate your preseed file

`debconf-set-selections -c preseed.cfg`

## Build with make
`make all`