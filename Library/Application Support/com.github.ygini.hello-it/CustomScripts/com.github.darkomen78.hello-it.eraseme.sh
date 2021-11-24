#!/bin/bash

. "$HELLO_IT_SCRIPT_SH_LIBRARY/com.github.ygini.hello-it.scriptlib.sh"

logfile=~/Library/Logs/eraseme.log

function onClickAction {
date >> $logfile
# open $logfile
sudo /Library/Management/erase-install/erase-install.sh --check-power --update  --erase --confirm --extras="/Users/Shared/IT/erase/pkg" --depnotify >> $logfile 2>&1 & disown
}

main $@

exit 0
