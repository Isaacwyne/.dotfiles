#!/usr/bin/env bash

function run {
  if ! pgrep $1 ; then
    $@&
  fi
}

# launch polybar
$HOME/.config/polybar/launch.sh &

# keybindings daemon
run sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc &

# restore wallpaper
bash $HOME/.fehbg

# start picom
picom --config $HOME/.config/bspwm/picom/picom.conf
