#!/bin/bash

pacstrap -K /mnt base linux-headers linux-firmware base-devel networkmanager sof-firmware vim bash-completion os-prober git;
genfstab -U /mnt >> /mnt/etc/fstab;
cp $SCRIPT_DIR/after-chroot.sh /mnt;
cp $SCRIPT_DIR/after-reboot.sh /mnt;
cp $SCRIPT_DIR/after-reboot2.sh /mnt;
arch-chroot /mnt /after-chroot.sh;
echo " ------------------------------ ";
echo "| You can now Reboot           |";
echo "| then run /after-reboot.sh    |";
echo " ------------------------------ ";
