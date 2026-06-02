#!/bin/bash

<<<<<<< HEAD
# Набор пакетов из официальных репозиториев Arch
PACMAN_PKGS=(
    alacritty alsa-utils base btop cava fastfetch feh 
    figlet-fonts firefox fish grub ly nano nautilus 
    network-manager-applet noto-fonts-emoji picom 
    polybar rofi sddm-kcm toilet ttf-fira-code 
    ttf-firacode-nerd ttf-jetbrains-mono 
    ttf-nerd-fonts-symbols wireguard-tools 
    xorg-xinit xorg-xrandr
)

# Набор пакетов из AUR (требуют yay)
AUR_PKGS=(
    amneziawg-dkms lavat-git unimatrix-git vesktop 
    wgtunnel-bin where-is-my-sddm-theme-git ytm-player
)

echo "=== Обновление системы ==="
sudo pacman -Syu --noconfirm

echo "=== Установка пакетов из официальных репозиториев ==="
sudo pacman -S --needed --noconfirm "${PACMAN_PKGS[@]}"

# Проверка и установка yay, если он не установлен
if ! command -v yay &> /dev/null; then
    echo "=== AUR помощник 'yay' не найден. Установка yay... ==="
    sudo pacman -S --needed --noconfirm base-devel git
    git clone https://archlinux.org /tmp/yay-build
    cd /tmp/yay-build || exit
    makepkg -si --noconfirm
    cd - || exit
    rm -rf /tmp/yay-build
fi

echo "=== Установка пакетов из AUR ==="
yay -S --needed --noconfirm "${AUR_PKGS[@]}"

echo "=== Установка успешно завершена! ==="

=======
# 1. Обновление баз данных и установка пакетов через PACMAN
echo "--- Установка пакетов PACMAN ---"
sudo pacman -Syu --needed \
accountsservice alsa-firmware alsa-plugins alsa-utils awesome-terminal-fonts \
base bluez-hid2hci bluez-obex bluez-utils btrfs-assistant cachyos-fish-config \
cachyos-grub-theme cachyos-hello cachyos-hooks cachyos-kernel-manager \
cachyos-keyring cachyos-micro-settings cachyos-mirrorlist cachyos-niri-noctalia \
cachyos-packageinstaller cachyos-plymouth-bootanimation cachyos-plymouth-theme \
cachyos-rate-mirrors cachyos-settings cachyos-v3-mirrorlist cachyos-v4-mirrorlist \
cachyos-wallpapers cachyos-zsh-config caelestia-meta cantarell-fonts cava \
cpupower dmraid dolphin duf efitools ethtool ffmpegthumbnailer firefox-i18n-ru \
fsarchiver glances google-chrome grub-btrfs-support grub-hook gst-libav \
gst-plugins-bad gst-plugins-ugly hdparm hwdetect hwinfo hyprlock inetutils \
intel-ucode jfsutils kitty lib32-vulkan-icd-loader libva-nvidia-driver \
linux-cachyos-headers linux-cachyos-lts-headers logrotate lsb-release lsscsi \
ly man-pages meld nano-syntax-highlighting netctl networkmanager-openvpn \
nfs-utils nvidia-580xx-dkms onefetch paru pavucontrol picom polkit-kde-agent \
pv rebuild-detector reflector sddm sg3_utils shelly sof-firmware ttf-opensans \
ufw-extras unrar unzip vesktop vlc-plugins-all waypaper xl2tpd xorg-xinit yay

# 2. Установка пакетов через YAY
echo "--- Установка пакетов YAY ---"
yay -S --needed \
app2unit caelestia-cli caelestia-shell libcava \
noctalia-qs-git python-materialyoucolor qtengine ttf-rubik-vf \
lavat-git swaykbdd unimatrix-git ytm-player

# 3. Сохранение биндов в Домашнюю директорию (~/keybinds.txt)
echo "--- Копирование биндов в домашнюю директорию ---"
cat << 'EOF' > ~/keybinds.txt
#########
KEYBINDS
#########
Mod+d fuzzel-rofi
Mod+t alacritty
Mod+w kill active
Mod+space float-tile
EOF

# 4. Системные команды (Дисплейный менеджер)
echo "--- Настройка дисплейного менеджера ly ---"
sudo systemctl disable sddm
sudo systemctl enable ly

# 5. Сборка оконного менеджера vxwm и rvx
echo "--- Сборка vxwm ---"
if [ -d "~/vxwm" ]; then
    cd ~/vxwm && sudo make clean install
    sudo rvx
else
    echo "Папка ~/vxwm не найдена. Пропустил сборку."
fi

echo "--- Готово! Все пакеты и настройки применены. ---"
>>>>>>> 3050be824cfcb157c8266dd31709c48aa7df5959
