---
title: Boot ISO By GRUB
nav_order: 1040
has_children: false
parent: Boot ISO
grand_parent: ISO
---


# Boot ISO By GRUB


## 範例專案

* boot-iso-by-grub / [demo-boot-linuxmint-21.2-iso](https://github.com/samwhelp/linuxmint-adjustment/tree/main/core/iso/boot-iso/boot-iso-by-grub/demo-boot-linuxmint-21.2-iso)


## 下載 ISO

先參考「[Download ISO](https://samwhelp.github.io/note-about-linuxmint/read/core/iso/download-iso.html)」這篇提到的下載方式，下載「Debian 官方提供最新的ISO檔案」。

將「ISO檔案」放到「/opt/iso/debian/12/debian-live-12.0.0-amd64-xfce.iso」這個路徑。

舉例執行下面指令

``` sh
sudo curl -fLo /opt/iso/linuxmint/21.2/linuxmint-21.2-cinnamon-64bit.iso --create-dirs \
	http://free.nchc.org.tw/linuxmint/isos/stable/21.2/linuxmint-21.2-cinnamon-64bit.iso
```


## 設定範例

> 接著採用下面其中一種方式來設定。

| GRUB Boot ISO 範例 | 設定檔路徑 | 是否需要執行 update-grub |
| --- | --- | --- |
| demo_40_custom | [/etc/grub.d/40_custom](https://github.com/samwhelp/linuxmint-adjustment/blob/main/core/iso/boot-iso/boot-iso-by-grub/demo-boot-linuxmint-21.2-iso/asset/overlay/etc/grub.d/40_custom) | 修改後，需要執行 `sudo update-grub` |
| demo_41_custom | [/boot/grub/custom.cfg](https://github.com/samwhelp/linuxmint-adjustment/blob/main/core/iso/boot-iso/boot-iso-by-grub/demo-boot-linuxmint-21.2-iso/asset/overlay/boot/grub/custom.cfg) | 修改後，**不需要**執行 `sudo update-grub` |

> 關於「`sudo update-grub`」指的是「`sudo grub-mkconfig -o /boot/grub/grub.cfg`」


## GRUB Menu Entry / Boot ISO 樣板 / Debian

``` sh
menuentry "Linux Mint 21.2 Victoria / Cinnamon" --class LinuxMint {
	set gfxpayload=keep
	set iso_file="/opt/iso/linuxmint/21.2/linuxmint-21.2-cinnamon-64bit.iso"
	search --set=iso_partition --no-floppy --file $iso_file
	probe --set=iso_partition_uuid --fs-uuid $iso_partition
	set img_dev="/dev/disk/by-uuid/$iso_partition_uuid"
	loopback loop ($iso_partition)$iso_file
	set boot_option=""
	#set boot_option="locale=zh_TW"
	#set boot_option="quiet splash"
	#set boot_option="file=/cdrom/preseed/linuxmint.seed ---"
	linux (loop)/casper/vmlinuz iso-scan/filename=$iso_file boot=casper $boot_option
	initrd (loop)/casper/initrd.lz
}

```


## See Also

* Grub 探索筆記 / [GRUB Boot ISO 範例](https://samwhelp.github.io/note-about-grub/read/howto/boot_iso.html)
