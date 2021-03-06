#!/bin/bash
# shellcheck disable=SC1090
echo
sleep 1
echo -e "$YELLOW--->Downloading latest $APPTITLE...$ENDCOLOR"
echo -e "Getting: $CYAN$APPGIT$ENDCOLOR"
git clone --depth 1 $APPGIT $APPPATH || { echo -e "${RED}Git not found.$ENDCOLOR" ; exit 1; }
cd $APPPATH
git config core.filemode false
cd $SCRIPTPATH
source "$SCRIPTPATH/inc/app-set-permissions.sh"
