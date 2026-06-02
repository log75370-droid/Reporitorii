<<<<<<< HEAD
# ==============================================================================
#                           ФУНКЦИЯ ПРОМПТА (PROMPT)
# ==============================================================================
function fish_prompt
    # --- ПЕРВАЯ СТРОКА: <хост<<юзер>>директория ---
    # Открывающая скобка <
    set_color $color_arrows --bold
    echo -n "<"

    # Вывод имени хоста через встроенную переменную
    set_color $color_host
    echo -n $hostname

    # Двойная скобка <<
    set_color $color_arrows --bold
    echo -n "<<"

    # Вывод имени пользователя
    set_color $color_user
    echo -n $USER

    # Двойная скобка >>
    set_color $color_arrows --bold
    echo -n ">>"

    # Вывод пути текущей директории
    set_color $color_dir
    echo (prompt_pwd)

    # --- ВТОРАЯ СТРОКА: -------> ---
    # Вывод финальной длинной стрелки
    set_color $color_arrows --bold
    echo -n "------->"

    # Сброс цвета и обязательный пробел перед вводом команды
    set_color normal
    echo -n " "
end
clear

=======
source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end
>>>>>>> 3050be824cfcb157c8266dd31709c48aa7df5959
