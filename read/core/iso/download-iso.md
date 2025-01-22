---
title: Download ISO
nav_order: 1000
has_children: false
parent: ISO
---


# Download ISO




## Linux Mint 22.1 "Xia"

* Linux Mint / [Download](https://linuxmint.com/download.php)
* Linux Mint / [Releases](https://linuxmint.com/download_all.php)

| Edition | Download | New Features | Release notes |
| --- | --- | --- | --- |
| Cinnamon Edition | [Download](https://www.linuxmint.com/edition.php?id=319) | [New Features](https://linuxmint.com/rel_xia_whatsnew.php) | [Release notes](https://linuxmint.com/rel_xia.php) |
| MATE Edition | [Download](https://www.linuxmint.com/edition.php?id=321) | [New Features](https://linuxmint.com/rel_xia_whatsnew.php) | [Release notes](https://linuxmint.com/rel_xia.php) |
| Xfce Edition | [Download](https://www.linuxmint.com/edition.php?id=320) | [New Features](https://linuxmint.com/rel_xia_whatsnew.php) | [Release notes](https://linuxmint.com/rel_xia.php) |


| EDGE Edition | Download | More Info |
| --- | --- | --- |
| Cinnamon Edition | [Download](https://www.linuxmint.com/edition.php?id=314) | [More Info](https://linuxmint-user-guide.readthedocs.io/en/latest/edge.html) |




## 下載腳本

* [下載腳本](https://github.com/samwhelp/linuxmint-adjustment/tree/main/core/iso/boot-iso/boot-iso-by-grub/demo-boot-linuxmint-22.1-iso)




## 下載點

> 可以到「Linux Mint / [Download](https://www.linuxmint.com/download.php)」或是「Linux Mint / [Releases](https://linuxmint.com/download_all.php)」找到下載點。

> 例如可以找到「[https://mirrors.kernel.org/linuxmint/stable/22.1/](https://mirrors.kernel.org/linuxmint/stable/22.1/)」。




## 下載方式


### iso-download.txt

先產生一個檔案「iso-download.txt」，內容如下

```
https://mirrors.kernel.org/linuxmint/stable/22.1/linuxmint-22.1-cinnamon-64bit.iso
https://mirrors.kernel.org/linuxmint/stable/22.1/linuxmint-22.1-mate-64bit.iso
https://mirrors.kernel.org/linuxmint/stable/22.1/linuxmint-22.1-xfce-64bit.iso

https://mirrors.edge.kernel.org/linuxmint/stable/22.1/sha256sum.txt
https://mirrors.edge.kernel.org/linuxmint/stable/22.1/sha256sum.txt.gpg
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
wget -c https://mirrors.kernel.org/linuxmint/stable/22.1/sha256sum.txt

sha256sum -c sha256sum.txt
```

會看到類似如下的內容

```
linuxmint-22.1-cinnamon-64bit.iso: OK
linuxmint-22.1-mate-64bit.iso: OK
linuxmint-22.1-xfce-64bit.iso: OK
```
