#!/bin/bash

NAME=$(echo "$1" | awk -F"/" '{print $NF}');

ntfsfix "$1";
umount "/run/media/mina/$NAME";
rm -rf "/run/media/mina/$NAME";
mkdir "/run/media/mina/$NAME";
ntfs-3g "$1" "/run/media/mina/$NAME";
