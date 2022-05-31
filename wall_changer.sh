#!/bin/bash

cd /opt/wallpaper_changer/;
git pull;
if [[ -d $(whoami) ]];
then
    feh --bg-scale $(whoami)/wallpaper.png
else
    echo "Directory of user $(whoami) not found."
fi