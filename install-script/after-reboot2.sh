#!/bin/bash

pacman -S stow git xf86-input-synaptics  --noconfirm --needed;

git config --global user.name "Mina Emad";
git config --global user.email "menamanos@gmail.com";
git config --global pull.rebase true;

git clone https://github.com/mina-emad-101/dotfiles.git;

rm -rf $HOME/.bashrc;
cd dotfiles;
stow *;
cd ..;
source $HOME/.bashrc;
pacman -S --noconfirm --needed;
mkdir -p /etc/X11/xorg.conf.d;
cp /usr/share/X11/xorg.conf.d/70-synaptics.conf /etc/X11/xorg.conf.d/
touch touchpad-settings;

echo '' >> touchpad-settings;
echo 'Section "InputClass"' >> touchpad-settings;
echo '    Identifier "touchpad"' >> touchpad-settings;
echo '    Driver "synaptics"' >> touchpad-settings;
echo '    MatchIsTouchpad "on"' >> touchpad-settings;
echo '        Option "TapButton1" "1"' >> touchpad-settings;
echo '        Option "TapButton2" "3"' >> touchpad-settings;
echo '        Option "TapButton3" "2"' >> touchpad-settings;
echo '        Option "VertEdgeScroll" "on"' >> touchpad-settings;
echo '        Option "VertTwoFingerScroll" "on"' >> touchpad-settings;
echo '        Option "HorizEdgeScroll" "on"' >> touchpad-settings;
echo '        Option "HorizTwoFingerScroll" "on"' >> touchpad-settings;
echo '        Option "CircularScrolling" "on"' >> touchpad-settings;
echo '        Option "CircScrollTrigger" "2"' >> touchpad-settings;
echo '        Option "EmulateTwoFingerMinZ" "40"' >> touchpad-settings;
echo '        Option "EmulateTwoFingerMinW" "8"' >> touchpad-settings;
echo '        Option "CoastingSpeed" "0"' >> touchpad-settings;
echo '        Option "FingerLow" "30"' >> touchpad-settings;
echo '        Option "FingerHigh" "50"' >> touchpad-settings;
echo '        Option "MaxTapTime" "125"' >> touchpad-settings;
echo 'EndSection' >> touchpad-settings;

cat touchpad-settings >> /etc/X11/xorg.conf.d/70-synaptics.conf;
rm -rf touchpad-settings;

sed -i "90,91 s/#\s*//" /etc/pacman.conf;

pacman -S xorg lightdm-gtk-greeter lightdm-gtk-greeter-settings i3 alacritty rofi pipewire multilib/lib32-pipewire pipewire-pulse pavucontrol dunst picom tmux yazi neovim firefox ttf-jetbrains-mono-nerd starship fzf ripgrep caja lxsession-gtk3 lxappearance lazygit pipewire pipewire-alsa pipewire-audio pipewire-jack pipewire-pulse vlc mariadb redis pamixer xclip php php-apache php-fpm php-gd php-imagick php-redis php-sodium php-sqlite composer;
systemctl enable lightdm.service;

mkdir -p /usr/share/themes/Dracula;
cp -r .themes/Dracula /usr/share/themes/Dracula
mkdir -p /usr/share/icons/Dracula;
cp -r .icons/Dracula /usr/share/icons/Dracula
