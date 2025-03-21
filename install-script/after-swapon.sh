#!/bin/bash

pacstrap -K /mnt base linux-firmware base-devel linux-headers networkmanager sof-firmware vim bash-completion os-prober git;
genfstab -U /mnt >> /mnt/etc/fstab;
SCRIPT_DIR="$(dirname "$0")";
cp "$SCRIPT_DIR/after-chroot.sh" /mnt;
cp "$SCRIPT_DIR/after-reboot.sh" /mnt;
cp "$SCRIPT_DIR/after-reboot2.sh" /mnt;
arch-chroot /mnt /after-chroot.sh;

echo " ------------------------------ ";
echo "| You can now Reboot           |";
echo "| then run /after-reboot.sh    |";
echo " ------------------------------ ";
