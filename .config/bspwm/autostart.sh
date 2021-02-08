#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}
# 2 monitors - Top R + BottomMiddle #
#xrandr --output DVI-D-0 --off --output HDMI-0 --off --output DP-0 --off --output DP-1 --off --output DP-2 --mode 2560x1440 --pos 403x1080 --rotate normal --output DP-3 --off --output DP-4 --off --output DP-5 --mode 1920x1080 --pos 0x0 --rotate normal --output DisplayPort-1-0 --off --output DisplayPort-1-1 --off --output HDMI-1-0 --off --output DVI-1-0 --off
# 2 monitors - top L+R #
#xrandr --output DVI-D-0 --off --output HDMI-0 --mode 1920x1080 --pos 1920x0 --rotate normal --output DP-0 --off --output DP-1 --off --output DP-2 --off --output DP-3 --off --output DP-4 --off --output DP-5 --mode 1920x1080 --pos 0x0 --rotate normal --output DisplayPort-1-0 --off --output DisplayPort-1-1 --off --output HDMI-1-0 --off --output DVI-1-0 --off
# All 3 monitors #
xrandr --output DVI-D-0 --off --output HDMI-0 --mode 1920x1080 --pos 1920x0 --rotate normal --output DP-0 --off --output DP-1 --off --output DP-2 --mode 2560x1440 --pos 403x1080 --rotate normal --output DP-3 --off --output DP-4 --off --output DP-5 --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1-1 --off --output DP-1-2 --off --output HDMI-1-1 --off --output DVI-I-1-1 --off

$HOME/.config/polybar/launch.sh &

#change your keyboard if you need it
#setxkbmap -layout be

#Some ways to set your wallpaper besides variety or nitrogen
#feh --bg-scale ~/.config/bspwm/wall.png &
feh --bg-fill /home/pete/Pictures/225202833-dual-1440p-wallpaper-WITHOUTLOGO.jpg &
#feh --randomize --bg-fill ~/Képek/*
#feh --randomize --bg-fill ~/Dropbox/Apps/Desktoppr/*
wal -nRa 90 &

xsetroot -cursor_name left_ptr &
run sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc &
dex $HOME/.config/autostart/hefftor-welcome-app.desktop &

run conky -c ~/.conkyrc &
run conky -c ~/.conkyrc_helper &
run glava &
run mpd &
# run variety &
run nm-applet &
run pamac-tray &
run xfce4-power-manager &
numlockx on &
blueberry-tray &
run dunst &
run urxvt -name 'Scratchpad' -e ~/.local/bin/scratch &
picom --config $HOME/.config/bspwm/picom.conf &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
pacmd load-module module-loopback latency_msec=5 &
# /usr/lib/xfce4/notifyd/xfce4-notifyd &
#nitrogen --restore &
#run caffeine &
#run vivaldi-stable &
#run firefox &
#run thunar &
#run dropbox &
#run insync start &
#run discord &
#run spotify &
#run atom &
