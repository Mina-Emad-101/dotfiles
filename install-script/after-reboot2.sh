#!/bin/bash

sudo pacman -Syu stow git xf86-input-synaptics --noconfirm --needed;

git config --global user.name "Mina Emad";
git config --global user.email "menamanos@gmail.com";
git config --global pull.rebase true;
git config --global credential.helper store;
git config --global init.defaultBranch main;

git clone https://github.com/mina-emad-101/dotfiles.git;
rm -rf dotfiles/tmux/.config/tmux/plugins;

rm -rf $HOME/.bashrc;
cd dotfiles;
stow *;
cd ..;
source $HOME/.bashrc;
sudo mkdir -p /etc/X11/xorg.conf.d;
sudo cp /usr/share/X11/xorg.conf.d/70-synaptics.conf /etc/X11/xorg.conf.d/
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

sudo /bin/sh -c 'cat touchpad-settings >> /etc/X11/xorg.conf.d/70-synaptics.conf;';
rm -rf touchpad-settings;

sudo sed -i "92,93 s/#\s*//" /etc/pacman.conf;
sudo pacman -Sy;

sudo pacman -S xorg lightdm-gtk-greeter lightdm-gtk-greeter-settings i3 alacritty rofi pipewire multilib/lib32-pipewire pipewire-pulse pavucontrol dunst picom tmux yazi neovim firefox ttf-jetbrains-mono-nerd starship fzf ripgrep caja lxsession-gtk3 lxappearance lazygit pipewire pipewire-alsa pipewire-audio pipewire-jack pipewire-pulse vlc mariadb redis pamixer xclip php php-apache php-fpm php-gd php-imagick php-redis php-sodium php-sqlite composer nodejs npm --noconfirm;
sudo systemctl enable lightdm.service;

sudo cp -r .themes/Dracula /usr/share/themes/
sudo cp -r .icons/Dracula /usr/share/icons/;

git clone https://aur.archlinux.org/paru.git;
cd paru;
makepkg -si;
cd ..;
rm -rf paru;
paru -S noto-fonts-ar gscreenshot navicat16-premium-en postman-bin --noconfirm;

sudo rm -rf /after-reboot2.sh;
