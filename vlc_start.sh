#!/bin/bash
#here update pi with your username & the path to your video folder
su pi -c '/usr/bin/vlc -LZ  "/home/pi/media/TO_UPDATE/Videos"'&
echo $! > /tmp/vlc_boot.pid