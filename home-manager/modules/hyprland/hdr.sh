#!/bin/bash
FILE="/home/ultra/HyprNix/home-manager/modules/hyprland/main.nix"

# Поиск закомментированной строки с учётом пробелов
LINE_COMMENTED=$(grep -Pn '^\s*#\"DP-1,2560x1440@180,auto,1.066667' "$FILE" | cut -d: -f1)
# Поиск раскомментированной строки с учётом пробелов
LINE_UNCOMMENTED=$(grep -Pn '^\s*\"DP-1,2560x1440@180,auto,1.066667' "$FILE" | grep -v '^\s*#' | cut -d: -f1)

if [[ -n "$LINE_COMMENTED" && -n "$LINE_UNCOMMENTED" ]]; then
    sed -i "${LINE_UNCOMMENTED}s/^\(\s*\)\"/\1#\"/" "$FILE"
    sed -i "${LINE_COMMENTED}s/^\(\s*\)#\"/\1\"/" "$FILE"
else
    echo "Не удалось найти подходящие строки для переключения."
fi

home-manager switch --flake ~/HyprNix/
