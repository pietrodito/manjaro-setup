setup_everything () {

   # Adapt config file to keyboard location
   sed "s|<PATTERN_DEVICE_FILE>|$1|" config_template.kbd > config.kbd
   sudo mv config.kbd /etc/kmonad/config.kbd

   # You have to put service up
   sudo systemctl enable --now kmonad.service
}

while :
do
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
       setup_everything $kbd_loc
       break
   fi
done


