# Provision Debian with preseed and packer

## Tools needed

1. Install **virtualbox** 
`brew cask install virtualbox`
2. Install **packer**
`brew install packer`

## Manual build process with packer

`packer build packer-debian-10-virtualbox.json`

## How to find the responses for a preseed file

1. Do a manual installation of Debian
2. After the installation check the following files:
    1. `/var/log/installer/cdebconf/templates.dat`
    2. `/var/log/installer/cdebconf/questions.dat`
3. Install debconf-utils package
4. Get current debconf settings: `debconf-get-selections --installer`
5. Get current debconf settings for the installed packages: `debconf-get-selections`
6. More information on [full preseed examples](https://jack.einval.com/debian-preseed/)

## Validate your preseed file

`debconf-set-selections -c preseed.cfg`

## Build a virtual box machine
`make all`