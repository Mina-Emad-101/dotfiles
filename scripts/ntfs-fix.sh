#!/bin/bash

NAME=$(echo "$1" | awk -F"/" '{print $NF}');

ntfsfix "$1";
umount "/run/media/$NAME";
rm -rf "/run/media/$NAME";
mkdir "/run/media/$NAME";
ntfs-3g "$1" "/run/media/$NAME";
