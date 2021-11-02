#!/bin/bash

mkdir -p /tmp/xdg-menus

setopt -o nullglob
mkdir -p /etc/xdg/menus
for menu in /app/gnome-menus/*.menu /run/host/etc/xdg/menus/*.menu; do
  ln -sf "$menu" /etc/xdg/menus
done

export XDG_DATA_DIRS=$XDG_DATA_DIRS:/run/host/usr/share:/var/lib/flatpak/exports/share:~/.local/share/flatpak/exports/share
menulibre "$@"
