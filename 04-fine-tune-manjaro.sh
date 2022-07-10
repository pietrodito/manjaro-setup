## No more workspaces
gsettings set org.gnome.desktop.interface enable-hot-corners false
gsettings set org.gnome.mutter dynamic-workspaces false
gsettings set org.gnome.desktop.wm.preferences num-workspaces 1

## Use SUPER to switch between apps instead of workspaces
for i in {1..9}; do gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-$i "[]";done
for i in {1..9}; do gsettings set org.gnome.shell.keybindings switch-to-application-$i "['<Super>$i']";done

## ralt as compose key
gsettings set org.gnome.desktop.input-sources xkb-options "['compose:ralt']"

## I see a red door...
gsettings set org.gnome.desktop.background picture-options 'none'
gsettings set org.gnome.desktop.background primary-color '#000000'
gsettings set org.gnome.desktop.background secondary-color '#000000'
gsettings set org.gnome.desktop.background color-shading-type 'solid'

## No one is more blind than the one who does not want to see
gsettings set org.gnome.desktop.interface cursor-size 1000
gsettings set org.gnome.desktop.interface cursor-theme 'Layan-white-cursors'

## Apple did bad when they decided to put date and time on top!
## This is not a blackboard, and this is not school...
## Dash to panel
gnome-extensions disable dash-to-dock@micxgx.gmail.com
gnome-extensions enable  dash-to-panel@jderose9.github.com

## Let's be sure to escape the cat
gsettings set org.gnome.desktop.peripherals.mouse speed 1

## Manipulate windows
gsettings set org.gnome.desktop.wm.keybindings maximize "['<Super>Up']"



## Who needs more than a terminal and a browser?
gsettings set org.gnome.shell favorite-apps "['firefox.desktop', 'terminator.desktop']"

## Do not suspend my computer
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-type 'nothing'

## My mouse is bluetooth
sudo sed -i 's/^#AutoEnable=false$/AutoEnable=true/' /etc/bluetooth/main.conf

## Let Mozilla decide for me
fire_profile=`cat ~/.mozilla/firefox/profiles.ini | grep 'Path=' | grep 'release' | sed s/^Path=//`
sed -i 's/stylesheets", true/stylesheets", false/' ~/.mozilla/firefox/$fire_profile/user.js
