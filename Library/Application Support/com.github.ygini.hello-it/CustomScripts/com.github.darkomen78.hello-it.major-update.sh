#!/bin/bash

. "$HELLO_IT_SCRIPT_SH_LIBRARY/com.github.ygini.hello-it.scriptlib.sh"

function onClickAction {
USRSHORTNAME="$(ls -la /dev/console | awk '{print $3}')"
HelloIT_item="/Users/${USRSHORTNAME}/Library/Preferences/com.github.ygini.Hello-IT.MajorUpdate.plist"
date >> /var/log/erase-install.log ;
sleep 5 ;
open /var/log/erase-install.log ;
sleep 2 ;
[[ -f ${HelloIT_item} ]] && rm ${HelloIT_item} ;
sleep 5 ;
sudo /Users/Shared/IT/erase/erase-install.sh --check-power --update --reinstall &
}

main $@

exit 0
