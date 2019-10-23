#!/usr/bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

run compton -b
run nm-applet
run xfce4-power-manager
run ~/scripts/tap-to-click.sh
run ~/scripts/inverse-scroll.sh
run ~/scripts/run-mailsync.sh
#run vaiety
run xmodmap ~/.Xmodmap

