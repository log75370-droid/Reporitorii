#!/bin/sh

# 1. Переключение раскладки клавиатуры
setxkbmap -layout us,ru -option grp:alt_shift_toggle &

# 2. Настройка монитора (разрешение и 144 Гц)
xrandr --output HDMI-0 --mode 2560x1440 --rate 144

# 3. Установка обоев рабочего стола
feh --bg-fill ~/Downloads/i.png &

# 4. Запуск композитора Picom (с вашим красным свечением)
killall picom; picom --config ~/.config/picom.conf &

# 5. Запуск панели Polybar (zxc ghoul)
killall polybar; polybar ghoul &

# Обязательная пауза в полсекунды, чтобы xrandr и X-сервер успели применить 2K разрешение 
# до того, как отрисуется vxwm и Polybar
sleep 0.5

# ВЫПОЛНЯЕТСЯ ПОСЛЕДНИМ (без знака &)
exec vxwm
