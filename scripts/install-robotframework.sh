#!/bin/sh -e

echo Installing robotframework globally
pip3 install robotframework

echo Checking the installation
python3 -m robot --version | grep 'Robot Framework'
