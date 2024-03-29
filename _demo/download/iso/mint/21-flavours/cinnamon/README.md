
# Download ISO / Linux Mint / Cinnamon


## Link

* [Linux Mint Releases](https://linuxmint.com/download_all.php)
* [Verify your ISO image](https://linuxmint-installation-guide.readthedocs.io/en/latest/verify.html)
* [How to verify your Ubuntu download](https://ubuntu.com/tutorials/how-to-verify-ubuntu#1-overview)
* [http://free.nchc.org.tw/linuxmint/isos/stable/](http://free.nchc.org.tw/linuxmint/isos/stable/)


## Prepare

run

``` sh
make prepare
```


## Download

run

``` sh
make download
```


## Boot

run

``` sh
make boot
```


## Mount

run

``` sh
make mount
```

run

``` sh
tree iso-root
```

run

``` sh
tree live-root
```


## Unmount

run

``` sh
make unmount
```


## Extract initrd

run

``` sh
make initrd-extract
```

## Clean

run

``` sh
make clean
```
