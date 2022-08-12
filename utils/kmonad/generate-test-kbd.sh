setup_everything () {
   sed "s|<PATTERN_DEVICE_FILE>|$1|" template.kbd > config.kbd
}

FILE=actual-kbd-path
setup_everything $(cat $FILE)
