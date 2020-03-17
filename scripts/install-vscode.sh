#!/bin/sh -e

echo Install Visual Studio Code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /usr/share/keyrings/microsoft-archive-keyring.gpg
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/microsoft-archive-keyring.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt-get install -y -q apt-transport-https
sudo apt-get update
sudo apt-get install -y -q code

echo Install a couple of extentions: python, c / c++, docker, robotframework, code runner
code --install-extension ms-python.python
code --install-extension ms-vscode.cpptools
code --install-extension ms-azuretools.vscode-docker
code --install-extension tomiturtiainen.rf-intellisense
code --install-extension formulahendry.code-runner
