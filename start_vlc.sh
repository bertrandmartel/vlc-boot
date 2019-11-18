#!/bin/bash
usb_label=VIDEOS
usb_video_path=/videos

while [ -z "$path" ]; do
    path=$(lsblk -o LABEL,MOUNTPOINT | grep $usb_label | cut -d " " -f2)
    echo "$path"
    if [ -z "$path" ]; then
        sleep 5
        echo "trying again"
    fi
done
/usr/bin/vlc -LZ --fullscreen --no-video-title-show "$path$usb_video_path"