#!/bin/bash
export DISPLAY=:0
su pi -c start_vlc.sh&
echo $! > /tmp/vlc_boot.pid