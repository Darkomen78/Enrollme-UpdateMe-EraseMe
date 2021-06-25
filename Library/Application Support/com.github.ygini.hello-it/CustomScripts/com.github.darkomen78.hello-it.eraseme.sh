#!/bin/bash

. "$HELLO_IT_SCRIPT_SH_LIBRARY/com.github.ygini.hello-it.scriptlib.sh"

logfile=~/Library/Logs/eraseme.log

function onClickAction {
date >> $logfile
sleep 1
open $logfile
sleep 1
sudo /Users/Shared/IT/erase/erase-install.sh --erase --update --confirm --extras="/Users/Shared/IT/erase/pkg" >> $logfile 2>&1
}

main $@

exit 0
