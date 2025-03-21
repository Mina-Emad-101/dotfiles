#!/bin/bash

systemctl enable NetworkManager;
systemctl start NetworkManager;
pacman -Syu broadcom-wl linux-headers --noconfirm --needed;
sed -i "s/#\s*%sudo/%sudo/" /etc/sudoers;
groupadd sudo;
useradd -m -G sudo mina;
echo "mina:3569" | chpasswd;

rm -rf /after-reboot.sh;

echo " --------------------------------------- ";
echo "| WIFI is now available for dell laptop |";
echo "| Now Reboot and Login as mina          |";
echo "| then run /after-reboot2.sh            |";
echo " --------------------------------------- ";
