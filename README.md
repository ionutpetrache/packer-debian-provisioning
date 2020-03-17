# Provision Debian with preseed installation and packer

## Tools needed

1. Install **homebrew**
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";brew update
```

2. Install **virtualbox** 
```
brew cask install virtualbox
```
3. Install **packer**
```
brew install packer
```
4. Install **vagrant** - optional
```
brew cask install vagrant
```

## Build a virtual box machine
`make all`

## In case you wanna build directly with packer

`packer build packer-debian-10-virtualbox.json`

## In case you wanna customize the provided *-preseed.cfg

1. Do a manual installation of Debian
2. After the installation check the following files:
    1. `/var/log/installer/cdebconf/templates.dat`
    2. `/var/log/installer/cdebconf/questions.dat`
3. Install debconf-utils package
4. Get current debconf settings: `debconf-get-selections --installer`
5. Get current debconf settings for the installed packages: `debconf-get-selections`
6. More information on [full preseed examples](https://jack.einval.com/debian-preseed/)
7. Validate your preseed file
`debconf-set-selections -c preseed.cfg`