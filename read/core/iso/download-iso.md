---
title: Download ISO
nav_order: 1000
has_children: false
parent: ISO
---


# Download ISO


## Linux Mint 21.2 "Victoria"

| Edition | Download | New Features | Release notes |
| --- | --- | --- | --- |
| Cinnamon Edition | [Download](https://www.linuxmint.com/edition.php?id=305) | [New Features](https://www.linuxmint.com/rel_victoria_cinnamon_whatsnew.php) | [Release notes](https://www.linuxmint.com/rel_victoria_cinnamon.php) |
| MATE Edition | [Download](https://www.linuxmint.com/edition.php?id=306) | [New Features](https://www.linuxmint.com/rel_victoria_mate_whatsnew.php) | [Release notes](https://www.linuxmint.com/rel_victoria_mate.php) |
| Xfce Edition | [Download](https://www.linuxmint.com/edition.php?id=307) | [New Features](https://www.linuxmint.com/rel_victoria_xfce_whatsnew.php) | [Release notes](https://www.linuxmint.com/rel_victoria_xfce.php) |


## 下載腳本

* [下載腳本](https://github.com/samwhelp/linuxmint-adjustment/blob/main/core/iso/boot-iso/boot-iso-by-grub/demo-boot-linuxmint-21.2-iso/iso-download.sh)


## 下載點

> 可以到「Linux Mint / [Download](https://www.linuxmint.com/download.php)」找到下載點。

> 例如可以找到「[http://free.nchc.org.tw/linuxmint/isos/stable/21.2/](http://free.nchc.org.tw/linuxmint/isos/stable/21.2/)」。


## 下載方式

### iso-download.txt

先產生一個檔案「iso-download.txt」，內容如下

```
http://free.nchc.org.tw/linuxmint/isos/stable/21.2/linuxmint-21.2-cinnamon-64bit.iso
http://free.nchc.org.tw/linuxmint/isos/stable/21.2/linuxmint-21.2-mate-64bit.iso
http://free.nchc.org.tw/linuxmint/isos/stable/21.2/linuxmint-21.2-xfce-64bit.iso
```

### iso-download.sh

接著執行下面的指令，就會下載剛剛「iso-download.txt」裡面所列的檔案

``` sh
wget -c -i iso-download.txt
```

> 關於「-c」指的是續傳

> 關於「-i iso-download.txt」，指的是下載「iso-download.txt」裡面所列的檔案


## Boot ISO

> 簡單「[驗證](#驗證)」過「下載完成的ISO檔案」，接下來可以選擇不同的「[Boot ISO](https://samwhelp.github.io/note-about-linuxmint/read/core/iso/boot-iso.html)」方式。



## 驗證


### sha256sum

* [man sha256sum](https://manpages.ubuntu.com/manpages/jammy/man1/sha256sum.1.html)

執行

``` sh
wget -c http://free.nchc.org.tw/linuxmint/isos/stable/21.2/sha256sum.txt

sha256sum -c sha256sum.txt
```

會看到類似如下的內容

```
linuxmint-21.2-cinnamon-64bit.iso: OK
linuxmint-21.2-mate-64bit.iso: OK
linuxmint-21.2-xfce-64bit.iso: OK
```
