#!/bin/bash
# Alpha Bro Here :3
BLUE='\033[94m'
RED='\033[91m'
GREEN='\033[92m'
ORANGE='\033[93m'
RESET='\e[0m'
TARGET="$1"
CURRENT_PATH=$(pwd)

if [ -z $TARGET ]; then
echo -e "$RED  _                           _      $RESET "
echo -e "$RED / |___ _   _ _ __        ___| |__   $RESET "
echo -e "$RED | / __| | | | '_ \      / __| '_ \  $RESET "
echo -e "$RED | \__ \ |_| | |_) |  _  \__ \ | | | $RESET "
echo -e "$RED |_|___/\__,_| .__/  (_) |___/_| |_| $RESET "
echo -e "$RED             |_|                     $RESET "
  	echo ""
	echo -e "$GREEN [+] by @___0x00$RESET"
	echo -e "$GREEN [+] http://rootnep.al$RESET"
	echo -e "$GREEN [-] Usage: isup.sh <targetlist>$RESET"
	exit
fi

if [[ $TARGET == "--help" ]] || [[ $TARGET == "-h" ]]; then
echo -e "$BLUE  _                           _      $RESET "
echo -e "$BLUE / |___ _   _ _ __        ___| |__   $RESET "
echo -e "$BLUE | / __| | | | '_ \      / __| '_ \  $RESET "
echo -e "$BLUE | \__ \ |_| | |_) |  _  \__ \ | | | $RESET "
echo -e "$BLUE |_|___/\__,_| .__/  (_) |___/_| |_| $RESET "
echo -e "$BLUE             |_|                     $RESET "
echo ""
	echo -e "$GREEN [+] by @___0x00$RESET"
	echo -e "$GREEN [+] http://rootnep.al$RESET"
    echo -e "$GREEN [+] Find alive host from huge domains dumps $RESET"
	echo -e "$GREEN [-] Usage: isup.sh <targetlist, subdomain file>$RESET"
    exit
fi

createdir=$(mkdir -p "$CURRENT_PATH/tmp/")
echo -e "$RED  _                           _      $RESET "
echo -e "$RED / |___ _   _ _ __        ___| |__   $RESET "
echo -e "$RED | / __| | | | '_ \      / __| '_ \  $RESET "
echo -e "$RED | \__ \ |_| | |_) |  _  \__ \ | | | $RESET "
echo -e "$RED |_|___/\__,_| .__/  (_) |___/_| |_| $RESET "
echo -e "$RED             |_|                     $RESET "
echo -e ""
echo -e "$ORANGE [+] by @___0x00$RESET"
echo -e "$ORANGE + ------------------------------=[Gathering Subdomains]=-------------- +$RESET"
echo -e ""
for foo in $(cat $TARGET) #demolist: https://hastebin.com/ahelalunan.css
do
    ping -c1 -W1 $foo > /dev/null 2>&1
    if [[ $? -eq 0 ]];
    then
        echo -e "$ORANGE [+]--- VALID ---[+] $foo $RESET" 
        echo -e "$foo" | tee -a $CURRENT_PATH/tmp/valid-$TARGET > /dev/null 2>&1
        
    else
        echo -e "$foo" | tee -a $CURRENT_PATH/tmp/notvalid-$TARGET
    fi
done
echo -e ""
echo -e "$BLUE  Working SubDomains saved to: tmp/valid-$TARGET.txt"
echo -e "$BLUE  Invalid SubDomains saved to: tmp/notvalid-$TARGET.txt"
echo -e "$BLUE + -- ----------------------------=[Done!]=----------------------------------- -- +$RESET"
