#!/bin/bash

dir="$HOME/.config/rofi/launchers/type-1"
theme='style-2'

# https://my-take-on.tech/2020/07/03/some-tricks-for-sxhkd-and-bspwm/
# ty <3

awk '/^[a-z]/ && last {print "<small>",$0,"\t                 ",last,"</small>"} {last=""} /^#/{last=$0}' ~/.config/sxhkd/sxhkdrc |
    column -t -s $'\t' |
    rofi -dmenu \
      -i \
      -markup-rows \
      -no-show-icons \
      -lines 15 \
      -theme-str "#window {width: 1000px;}" \
      -theme ${dir}/${theme}.rasi
