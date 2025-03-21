#!/bin/bash

systemctl enable NetworkManager;
ln -sf /usr/share/zoneinfo/Africa/Cairo /etc/localtime;
hwclock --systohc;
sed -i "s/#en_US.UTF-8/en_US.UTF-8/" /etc/locale.gen;
sed -i "s/#ar_EG.UTF-8/ar_EG.UTF-8/" /etc/locale.gen;
locale-gen;
echo "LANG=en_US.UTF-8" > /etc/locale.conf;
echo "Mina" > /etc/hostname;
echo "root:3569" | chpasswd;
pacman -S grub efibootmgr os-prober --noconfirm;
fdisk -l;
read -p "Enter 'sd(n)' for boot partition: " boot_partition;
mount "/dev/$boot_partition" /boot;
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB;
grub-mkconfig -o /boot/grub/grub.cfg;
sed -i "s/#GRUB_DISABLE_OS/GRUB_DISABLE_OS" /etc/default/grub;
fdisk -l;
read -p "Enter 'sd(n)' for Windows boot partition (default: empty): " win_boot_partition;
if [[ -n $win_boot_partition ]]; then
	mount "/dev/$win_boot_partition" /mnt;
	os-prober;
	grub-mkconfig -o /boot/grub/grub.cfg;
fi

echo " ---------------------------------- ";
echo "| You can edit /boot/grub/grub.cfg |";
echo "| You can now exit                 |";
echo " ---------------------------------- ";
