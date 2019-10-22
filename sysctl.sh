#!/bin/bash

#sipChecker=sudo csrutil status
disableSIP=Please disable SIP and re-run script.
FILE=~/desktop/sysctl.conf
OLDTIME=2
CURTIME=$(date +%s)
FILETIME=$(stat -t %s -f %m $FILE)
TIMEDIFF=$(expr $CURTIME - $FILETIME)

#if [ "${sipChecker}" != "disabled." ]; then
#    echo "${disableSIP}";
#    exit 0
#fi

curl -fsSL https://raw.githubusercontent.com/raumfahrerspiffy/tcptuning.io/master/sysctl.conf -o ~/Desktop/sysctl.conf -s
sleep 3

echo '##                        (10%)'
sleep 1
echo '#####                     (33%)\r'
sleep 1
echo '#############             (66%)\r'
sleep 1
echo '##################        (78%)\r'
sleep 1
echo '#######################   (100%)\r'
echo '\n'

if [ $TIMEDIFF -gt $OLDTIME ]; then
   echo "Failed, check network connection."
fi

if [ $OLDTIME < $TIMEDIFF ]; then 
   echo "Completed succesfully. Please reboot."
fi
