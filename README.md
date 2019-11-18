# Init.d service for starting VLC at boot

Start a init.d VLC script at boot on your Raspberry PI for example in this case to loop videos in a specific folder.

In this example, VLC is executed as the pi user since the root user is denied using VLC, see vlc_start.sh

## Usecase

Use a raspberry PI connected to a screen to loop some videos with VLC :

![tree](https://user-images.githubusercontent.com/5183022/69096771-5b640180-0a55-11ea-9dd7-6f21bf70c6cc.jpg)

## Install

```
git clone git@github.com:bertrandmartel/vlc-boot.git && cd vlc-boot
cp vlc_boot.sh /bin/
cp start_vlc.sh /bin/
cp vlc_boot /etc/init.d/
update-rc.d vlc_boot defaults
systemctl enable vlc_boot
```

## Usage

* start
```
service vlc_boot start
```

* stop
```
service vlc_boot stop
```

* restart
```
service vlc_boot restart
```

## Uninstall

```
update-rc.d -f vlc_boot remove
```

## USB Volume path

Note that the USB path is retrieved using `lsblk -o LABEL,MOUNTPOINT` so it won't work if you are using usbmount utility for example