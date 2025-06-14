#!/bin/bash

sed -i "s/#\s*%sudo/%sudo/" /etc/sudoers;
groupadd sudo;
useradd -m -G sudo mina;
echo "mina:3569" | chpasswd;

rm -rf /after-reboot.sh;

echo " ---------------------------------- ";
echo "| Now Reboot and Login as mina     |";
echo "| then run /after-reboot2.sh       |";
echo " ---------------------------------- ";
