#!/bin/bash

dir="$HOME/.config/rofi/launchers/type-1"
theme='style-2'

xdotool search --sync --syncsleep 10 --limit 1 --class Rofi keyup --delay 0 Tab key --delay 0 Tab keyup --delay 0 Alt_L keydown --delay 0 Alt_L &
rofi \
  -show window \
  -selected-row 1 \
  -steal-focus \
  -sync \
  -no-lazy-grab \
  -show-icons true \
  -theme-str "#window {width: 550px; height: 400px;}" \
  -theme-str "#inputbar {enabled: false;}" \
  -theme-str "#mode-switcher {enabled: false;}" \
  -theme ${dir}/${theme}.rasi \
  -modes "window" \
  -kb-mode-next "" \
  -kb-cancel "Alt+Escape,Escape" \
  -kb-accept-entry "!Alt-Tab,!Alt_L,!Alt+Alt_L,Return,Tab" \
  -kb-row-down "Alt+Tab,Alt+Down" \
  -kb-row-up "Alt+ISO_Left_Tab,Alt+Shift+Tab,Alt+Up" \
  -kb-element-next "" &
