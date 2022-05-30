#!/bin/bash

user=$(cat ./users | grep $(whoami))
if [ -z "$user" ]
  then echo -e "You are not in the list of users\nMake sure you have read the README"
  exit
fi
echo "User $user finded, starting installation";
cd /opt/;
git clone git@github.com:Waz0x/wallpaper_changer.git /tmp/wallpaper_changer;
sudo mv /tmp/wallpaper_changer /opt
sudo chown $(whoami) -R wallpaper_changer;
cd wallpaper_changer;
chmod +x wall_changer.sh;
chmod +x change_wall;
sudo cp wall_changer.sh /usr/bin/wall_changer;
crontab -l > mycron;
echo "* * * * * /opt/wallpaper_changer/wall_changer.sh" >> mycron;
crontab mycron;
rm -f mycron;
