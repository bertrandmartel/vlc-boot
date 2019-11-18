# Init.d service for starting VLC at boot

Start a init.d VLC script at boot on your Raspberry PI for example in this case to loop videos in a specific folder.

In this example, VLC is executed as the pi user since the root user is denied using VLC, see vlc_start.sh

## Install

```
git clone git@github.com:bertrandmartel/vlc-boot.git && cd vlc-boot
cp vlc_start.sh /bin/
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