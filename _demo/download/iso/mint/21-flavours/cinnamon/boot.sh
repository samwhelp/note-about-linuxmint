#!/usr/bin/env bash


boot_iso () {
	boot_cinnamon
}

boot_cinnamon () {
	kvm \
		-object memory-backend-ram,id=pc.ram,size=1024M,x-use-canonical-path-for-ramblock-id=off \
		-machine memory-backend=pc.ram \
		-m 1024M \
		-monitor stdio \
		-cdrom linuxmint-21-cinnamon-64bit.iso
}

__main__ () {
	boot_iso
}

__main__

##
## * $ sudo apt-get install qemu-kvm
## * $ sudo apt-get install qemu-system-x86
## * $ `man qemu-system-x86_64`
## * $ `man qemu`
##
