#!/bin/bash
#
cat << EEF
test
EEF
#
SIPchecker=($(csrutil status | awk '{ print $5 }'))
if [ "$SIPchecker" != "disabled." ]; then
    echo "Please disable *System Integrity Protection* and re-run script."
    echo "Refer to README for help.";
    exit 0
fi
#
curl -fsSL https://raw.githubusercontent.com/raumfahrerspiffy/tcptuning.io/master/sysctl.conf -o ~/Desktop/sysctl.conf -s
#
echo 'Working...'
sleep 2
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
sleep 1
#
FILE=~/desktop/sysctl.conf
OLDTIME=10
CURTIME=$(date +%s)
FILETIME=$(stat -t %s -f %m $FILE)
TIMEDIFF=$(expr $CURTIME - $FILETIME)
#
if [ $TIMEDIFF -gt $OLDTIME ]; then
   echo "Failed. Check network connection."
fi
#
if [ $OLDTIME -gt $TIMEDIFF ]; then 
   echo "Completed succesfully. Please reboot."
fi
