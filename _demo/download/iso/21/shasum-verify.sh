#!/usr/bin/env bash

#gpg --keyid-format long --verify SHA256SUMS.gpg SHA256SUMS
gpg --verify sha256sum.txt.gpg sha256sum.txt


##
## * https://linuxmint-installation-guide.readthedocs.io/en/latest/verify.html#verify-the-authenticity-of-sha256sum-txt
## * https://ubuntu.com/tutorials/how-to-verify-ubuntu#4-retrieve-the-correct-signature-key
## * https://ubuntu.com/tutorials/how-to-verify-ubuntu#5-verify-the-sha256-checksum
##
