#!/bin/bash

cd /opt/wallpaper_changer/;
git pull;
gsettings set org.gnome.desktop.background picture-uri file:///opt/wallpaper_changer/$(whoami)/wallpaper.png >> log