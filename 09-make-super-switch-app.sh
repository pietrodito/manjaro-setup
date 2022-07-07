for i in {1..9}; do gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-$i "[]";done
for i in {1..9}; do gsettings set org.gnome.shell.keybindings switch-to-application-$i "['<Super>$i']";done

