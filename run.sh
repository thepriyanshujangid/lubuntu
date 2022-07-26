#! /bin/bash
killall pcmanfm
sudo -S <<< "p" rm -r ~/.config/pcmanfm
cp -r ./pcmanfm ~/.config/ 
cp -r ./openbox ~/.config/ 
cp -r ./lxterminal ~/.config  
sudo cp -r Yaru-dark /usr/share/themes/ 
cp -r ./lxpanel ~/.config/ 
openbox --reconfigure
sudo -S <<< "p" apt update
sudo -S <<< "p" apt install  nomacs  gedit clipit gnome-screenshot indicator-multiload  vlc android-tools-fsutils  android-tools-fastboot android-tools-adb  pulseaudio-module-bluetooth  -y
sudo -S <<< "p" apt purge pidgin* mplayer*  gpicview* update-notifier*  update-manager*  sylpheed* gnome-mpv* synaptic*   -y  
sudo -S <<< "p" apt autoremove  -y 
cd ~
git clone https://github.com/thepriyanshujangid/ssh && cd ssh && cp -r .ssh ~/  && sudo -S <<< "p"  chmod -R 700 ~/.ssh && cd ~ && sudo -S <<< "p" rm -r ssh 
git clone  https://github.com/thepriyanshujangid/sdat2img && sudo -S <<< "p" mv ./sdat2img /opt && sudo -S <<< "p" rm -r /opt/sdat2img/.git 
sudo -S <<< "p" xdg-mime default nomacs.desktop image/gif image/jpeg image/png image/bmp image/x-eps image/x-ico image/x-portable-bitmap image/x-portable-graymap image/x-portable-pixmap image/x-xbitmap image/x-xpixmap 
lxpanelctl restart
echo ' xmodmap -e "keycode 66=space" ' >> ~/.profile
echo 'xmodmap -e "keycode 108=Caps_Lock" '  >>  ~/.profile
echo  " synclient TouchpadOff=0 " >> ~/.profile

echo 'xmodmap -e "clear lock"' >>~/.profile
echo "syndaemon -d -t" >> ~/.profile
echo "synclient HorizTwoFingerScroll=1" >> ~/.profile
echo "synclient VertEdgeScroll=0" >> ~/.profile
cd ~
source .profile
sudo -S <<< "p" rm -r ~/lubuntu


