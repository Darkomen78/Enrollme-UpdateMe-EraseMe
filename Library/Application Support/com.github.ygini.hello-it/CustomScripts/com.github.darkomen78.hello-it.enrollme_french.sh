#!/bin/bash

. "$HELLO_IT_SCRIPT_SH_LIBRARY/com.github.ygini.hello-it.scriptlib.sh"

ITFOLDER=/Users/Shared/IT
BINDAD=$(dsconfigad -show | awk '/Active Directory Domain/{print $NF}')
DEPOK=$(profiles status -type enrollment | grep DEP | awk '{print $4}')

function setTitleAction {
	if [ -n "${BINDAD}" ]; then
		# Déjà Bindé
		updateTitle "Domaine : $BINDAD"
		updateState ${STATE[0]}
		# setEnabled NO
		exit 0 	
	fi
	if [ "${DEPOK}" = "Yes" ]; then
		# Déjà enrôlé
		updateTitle "Supervisé"
		updateState ${STATE[3]}
		# setEnabled NO
		exit 0
	else
		# Doit être enrôlé
		setEnabled YES
		updateTitle "Enrôler moi !"
		updateState ${STATE[3]}
	fi
}

function fromCronAction {
	if [ -n "${BINDAD}" ]; then
		# Déjà Bindé
		updateTitle "Domaine : $BINDAD"
		updateState ${STATE[0]}
		# setEnabled NO
		exit 0
	fi
	if [ "${DEPOK}" = "Yes" ]; then
		# Déjà enrôlé
		updateTitle "Supervisé"
		updateState ${STATE[0]}
		# setEnabled NO
		exit 0
	else
		# Doit être enrôlé
		setEnabled YES
		updateTitle "Enrôler moi !"
		updateState ${STATE[1]}
	fi
}

function onClickAction {
	if [ -n "${BINDAD}" ]; then
		exit 0
	fi
	if [ "${DEPOK}" = "Yes" ]; then
		exit 0
	else
		sudo "$ITFOLDER"/enrollme/enrollme.sh -c
	fi
}
	main "$@"

	exit 0
