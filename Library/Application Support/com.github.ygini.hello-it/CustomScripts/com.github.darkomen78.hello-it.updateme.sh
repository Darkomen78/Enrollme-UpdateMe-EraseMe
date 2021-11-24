#!/bin/bash

. "$HELLO_IT_SCRIPT_SH_LIBRARY/com.github.ygini.hello-it.scriptlib.sh"

logfile=~/Library/Logs/updateme.log

function onClickAction {
USRSHORTNAME="$(ls -la /dev/console | awk '{print $3}')"
HelloIT_item="/Users/${USRSHORTNAME}/Library/Preferences/com.github.ygini.Hello-IT.updateme.plist"
date >> $logfile
# open $logfile
[[ -f ${HelloIT_item} ]] && rm ${HelloIT_item}
sudo /Library/Management/erase-install/erase-install.sh --check-power --update --reinstall --depnotify >> $logfile 2>&1 & disown
}

main $@

exit 0
