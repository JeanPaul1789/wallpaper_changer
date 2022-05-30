#!/bin/bash

cd /opt/wallpaper_changer/;
git pull;
gsettings get org.gnome.desktop.background picture-uri 'file:///opt/wallpaper_changer/$(whoami)/wallpaper.png'