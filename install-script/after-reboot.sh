#!/bin/bash

systemctl enable NetworkManager;
systemctl start NetworkManager;
pacman -S broadcom-wl linux-headers --noconfirm --needed;
sed -i "s/#\s*%sudo/%sudo/" /etc/sudoers;
groupadd sudo;
useradd -m -G sudo mina;
chpasswd mina:3569;

echo "-------------------------------";
echo "Now Reboot and Login as mina";
