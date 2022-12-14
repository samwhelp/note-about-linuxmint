#!/usr/bin/env bash


sha256sum -c sha256sum.txt

##
## linuxmint-21-cinnamon-64bit.iso: OK
## linuxmint-21-mate-64bit.iso: OK
## linuxmint-21-xfce-64bit.iso: OK
##


##
## sha256sum -c sha256sum.txt 2>&1 | grep OK
## shasum -a 256 -c sha256sum.txt 2>&1 | grep OK
##

##
## https://linuxmint-installation-guide.readthedocs.io/en/latest/verify.html#integrity-check
##

##
## https://ubuntu.com/download/desktop/thank-you?version=22.04.1&architecture=amd64#
## echo "c396e956a9f52c418397867d1ea5c0cf1a99a49dcf648b086d2fb762330cc88d *ubuntu-22.04.1-desktop-amd64.iso" | shasum -a 256 --check
##
