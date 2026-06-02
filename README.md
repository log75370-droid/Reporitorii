![full_screen.png](full_screen.png)
# CachyOS Custom Build (X11 & Wayland)

Описание кастомной сборки операционной системы на базе CachyOS с поддержкой графических сред X11 и Wayland.

## Необходимые пакеты

### ALL
```text
alacritty
alsa-utils
amneziawg-dkms
amneziawg-go
amneziawg-tools
base
base-devel
btop
cava
efibootmgr
fastfetch
feh
figlet
figlet-fonts
firefox
fish
git
grub
lavat-git
linux
linux-firmware
linux-headers
ly
nano
nautilus
network-manager-applet
networkmanager
noto-fonts-emoji
nvidia-580xx-dkms
nvidia-580xx-utils
openresolv
picom
pipewire
pipewire-alsa
pipewire-pulse
polybar
python-pip
python-pipx
rofi
sddm
sddm-kcm
toilet
ttf-fira-code
ttf-firacode-nerd
ttf-jetbrains-mono
ttf-nerd-fonts-symbols
unimatrix-git
vesktop
wgtunnel-bin
where-is-my-sddm-theme-git
wireguard-tools
wireplumber
xorg-server
xorg-xinit
xorg-xrandr
yay
yay-debug
ytm-player
```



---

## Горячие клавиши (Keybinds)

Все конфигурационные файлы и бинды копируются в домашнюю директорию (`~`).

* **Mod + d** — fuzzel-rofi  
* **Mod + t** — alacritty  
* **Mod + w** — kill active  
* **Mod + space** — float-tile  

---

## Системные команды для настройки (System commands)

Выполните в терминале для переключения дисплейного менеджера на `ly` и сборки оконного менеджера `vxwm`:

```bash
# Отключение SDDM и включение Ly TDM
sudo systemctl disable sddm  
sudo systemctl enable ly  

# Сборка и установка vxwm
cd ~/vxwm && sudo make clean install  
sudo rvx  
```

> **Примечание для пользователей из РФ:** Утилиты обхода блокировок типа Zapret могут работать нестабильно или не работать вовсе из-за особенностей фильтрации ТСПУ. Рекомендуется использовать альтернативные методы (например, настроенный AmneziaWG или актуальные конфигурации ByeDPI).
