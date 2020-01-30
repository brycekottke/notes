#!/bin/bash

#NOTE: Need this to post to system tray with notify-send
export XDG_RUNTIME_DIR="/run/user/1000"

if ping -q -c 1 -W 1 4.2.2.2 > /dev/null; then

  wget --quiet -P /tmp/ -O /tmp/zoom-output https://zoom.us/download

  current_version=$(cat /opt/zoom/version.txt \
    |sed 's/\.//g')
  latest_version=$(cat /tmp/zoom-output \
    |grep '<span class="linux-ver-text" style="display: none;">Version' \
    |awk -F '"linux-ver-text" style="display: none;">Version ' '{print $2}' \
    |sed 's/<.*//g' \
    |sed 's/\.//g')
  
  rm /tmp/zoom-output
  
  if [[ ${current_version} -lt ${latest_version} ]]; then
    echo "UPDATE ZOOM"
    /usr/bin/notify-send -u critical -t '12000' '!!! UPDATE ZOOM !!!'
  else
    echo "ZOOM IS UP TO DATE"
  fi
else
  echo "ZOOM: No Internet Connection. Can't check for updates"
fi
