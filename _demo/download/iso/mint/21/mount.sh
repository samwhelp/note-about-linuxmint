#!/usr/bin/env bash

prepare_mount_dir () {
	mkdir -p mnt
}

mount_iso () {
	mount_cinnamon
}

mount_cinnamon () {
	sudo mount -o loop linuxmint-21-cinnamon-64bit.iso mnt
}

__main__ () {
	prepare_mount_dir
	mount_iso
}

__main__
