#!/usr/bin/env bash

echo
echo "##"
echo "## Key Get:"
echo "##"
echo
#gpg --keyid-format long --keyserver hkp://keyserver.ubuntu.com --recv-keys 0x46181433FBB75451 0xD94AA3F0EFE21092
gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-key "27DE B156 44C6 B3CF 3BD7  D291 300F 846B A25B AE09"
#gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-key A25BAE09

#ls ~/.gnupg/

echo
echo "##"
echo "## Key List:"
echo "##"
echo
#gpg --keyid-format long --list-keys --with-fingerprint 0x46181433FBB75451 0xD94AA3F0EFE21092
gpg --list-key --with-fingerprint A25BAE09

##
## * https://linuxmint-installation-guide.readthedocs.io/en/latest/verify.html
## * https://ubuntu.com/tutorials/how-to-verify-ubuntu#4-retrieve-the-correct-signature-key
##
