#!/bin/bash

reflector;
pacstrap -K /mnt base linux linux-firmware base-devel networkmanager sof-firmware vim bash-completion os-prober git;
genfstab -U /mnt >> /mnt/etc/fstab;
arch-chroot /mnt;
ln -sf /usr/share/zoneinfo/Africa/Cairo /etc/localtime;
hwclock --systohc;
sed -i "s/#en_US.UTF-8/en_US.UTF-8/" /etc/locale.gen;
sed -i "s/#ar_EG.UTF-8/ar_EG.UTF-8/" /etc/locale.gen;
locale-gen;
echo "LANG=en_US.UTF-8" >> /etc/locale.conf;
echo "Mina" >> /etc/hostname;
chpasswd root:3569;
pacman -S grub efibootmgr --noconfirm;
mount /dev/efi /boot;
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB;
grub-mkconfig -o /boot/grub/grub.cfg;
echo "----------------------------------";
echo "You Can Now Reboot";
