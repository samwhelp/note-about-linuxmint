

# Ubuntu / ISO


## Subject


* [Download ISO](#download-iso)
* [Mount ISO](#mount-iso)
* [Mount SquashFS](#mount-squashfs)
* [Extract initrd](#extract-initrd)
* [Unmount](#unmount)
* [Clean](#clean)



## Download ISO

``` sh
wget -c 'http://free.nchc.org.tw/linuxmint/isos/stable/21/linuxmint-21-cinnamon-64bit.iso'
```

## Mount ISO

``` sh
sudo mount -o loop linuxmint-21-cinnamon-64bit.iso iso-root
```

## Mount SquashFS

``` sh
sudo mount -o loop iso-root/casper/filesystem.squashfs live-root
```

## Extract initrd

### by initramfs-extract

``` sh
initramfs-extract iso-root/casper/initrd initrd-root
```

### by unmkinitramfs

``` sh
unmkinitramfs iso-root/casper/initrd initramfs
```

## Unmount

``` sh
sudo umount live-root
sudo umount iso-root
```

> umount `live-root` first，then umount `iso-root`


## Clean

``` sh
sudo rm -rf initrd-root initramfs
```
