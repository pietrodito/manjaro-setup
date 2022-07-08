## Use SUPER to switch between apps
for i in {1..9}; do gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-$i "[]";done
for i in {1..9}; do gsettings set org.gnome.shell.keybindings switch-to-application-$i "['<Super>$i']";done

## Set desktop background to black
gsettings set org.gnome.desktop.background picture-options 'none'
gsettings set org.gnome.desktop.background primary-color '#000000'
gsettings set org.gnome.desktop.background secondary-color '#000000'
gsettings set org.gnome.desktop.background color-shading-type 'solid'

## Increase mouse pointer size
gsettings set org.gnome.desktop.interface cursor-size 1000
gsettings set org.gnome.desktop.interface cursor-theme 'Layan-white-cursors'


## Dash to panel
gnome-extensions disable dash-to-dock@micxgx.gmail.com
gnome-extensions enable  dash-to-panel@jderose9.github.com

## Set favorites to dash
gsettings set org.gnome.shell favorite-apps "['firefox.desktop', 'terminator.desktop']"

## No more workspaces
gsettings set org.gnome.desktop.interface enable-hot-corners false
gsettings set org.gnome.mutter dynamic-workspaces false
gsettings set org.gnome.desktop.wm.preferences num-workspaces 1

gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'



## Bluetooth at startup
sudo sed -i 's/^#AutoEnable=false$/AutoEnable=true/' /etc/bluetooth/main.conf

## Remove firefox tuning
fire_profile=`cat ~/.mozilla/firefox/profiles.ini | grep 'Path=' | grep 'release' | sed s/^Path=//`
sed -i 's/stylesheets", true/stylesheets", false/' ~/.mozilla/firefox/$fire_profile/user.js
