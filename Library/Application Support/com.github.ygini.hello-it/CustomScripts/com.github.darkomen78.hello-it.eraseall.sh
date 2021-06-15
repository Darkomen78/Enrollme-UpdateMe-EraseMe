#!/bin/bash

. "$HELLO_IT_SCRIPT_SH_LIBRARY/com.github.ygini.hello-it.scriptlib.sh"

function onClickAction {
date >> /var/log/erase-install.log
sleep 5
open /var/log/erase-install.log
sleep 5
sudo /Users/Shared/IT/erase/erase-install.sh --erase --update --confirm --extras="/Users/Shared/IT/erase/pkg" &
}

main $@

exit 0
