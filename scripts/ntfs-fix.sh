#!/bin/bash

NAME=$(blkid | grep "$1" | grep -o 'LABEL="[^"]*"' | grep -o '".*"' | sed 's/"//g');

ntfsfix "$1";
umount "/run/media/mina/$NAME";
rm -rf "/run/media/mina/$NAME";
mkdir "/run/media/mina/$NAME";
ntfs-3g "$1" "/run/media/mina/$NAME";
