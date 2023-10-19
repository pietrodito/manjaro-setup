setup_everything () {
   sed "s|<PATTERN_DEVICE_FILE>|$1|" utils/kmonad/template.kbd > utils/kmonad/config.kbd
}

while :
do
    FILE=utils/kmonad/actual-kbd-path
    if test -f "$FILE"; then
        setup_everything $(cat $FILE)
       break
    fi

  echo  "Help me found your keyboard:"
  echo  " (1) By path - (mandatory for laptops)"
  echo  " (2) By id"
  echo  -n "Your choice? "
  read userInput
  if [[ "$userInput" == "1" ]]
  then
      dir="path"
  else
      dir="id"
  fi

  kbds=($(ls /dev/input/by-$dir | grep "kbd"))
  for i in $(seq 1 ${#kbds[@]});
     do echo $i ${kbds[i-1]}
  done
  echo  -n "Your choice? "
  read userInput

  kbd_loc=/dev/input/by-$dir/${kbds[userInput-1]}
  echo "KMonad will remap this keyboard:"
  echo "--> $kbd_loc"
  echo "Is it ok? (yes/RETRY)"
  read userInput

   if [[ "$userInput" == "yes" ]]
   then
       echo $kbd_loc > $FILE
   fi
done

sudo groupadd uinput
sudo usermod -aG uinput ulys

sudo cp utils/kmonad/99-kmonad.rules /lib/udev/rules.d/
sudo mkdir -p /etc/kmonad/
sudo cp utils/kmonad/config.kbd /etc/kmonad/config.kbd

sudo cp -f utils/kmonad/kmonad.service /etc/systemd/system/
systemctl enable kmonad.service && systemctl start kmonad.service
