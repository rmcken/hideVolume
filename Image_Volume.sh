#!/bin/bash
#
# Usage:
#  Image_Volume hide -- hide and force unmount of Image Volume
# 
#  Image_Volume <anything other than hide> -- unhide and mount of Image Volume
#
# Use for library loaners to hide image volume from cbeuser accounts
# and show it for motley account
#
# /usr/sbin/diskutil unmount force /Volumes/Image/
#
# sudo chflags     hidden /Volumes/Image
# sudo chflags nohidden /Volumes/Image

if [ -z "$1" ]
  then
    echo "No argument supplied"
    exit 1
fi

if [ "$1" == "hide" ]; then
  sudo chflags hidden /Volumes/Image
  diskutil unmount force /Volumes/Image/
else
  sudo chflags nohidden /Volumes/Image
fi



