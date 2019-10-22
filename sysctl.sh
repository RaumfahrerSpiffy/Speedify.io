#!/bin/bash
#
<< EEF
 _____               _ _ ___       _     
|   __|___ ___ ___ _| |_|  _|_ _  |_|___ 
|__   | . | -_| -_| . | |  _| | |_| | . |
|_____|  _|___|___|___|_|_| |_  |_|_|___|
      |_|                   |___|        
==========================================
EEF
#
#SIPchecker=($(csrutil status | awk '{ print $5 }'))
#if [ "$SIPchecker" != "disabled." ]; then
#    echo "Disable SYSTEM INTEGRITY PROTECTION, then re-run script."
#    echo "Refer to README for help.";
#    exit 0
#fi
#
#curl -fsSL https://raw.githubusercontent.com/raumfahrerspiffy/tcptuning.io/master/sysctl.conf -o ~/Desktop/sysctl.conf -s
#
echo 'Working...'
sleep 2
echo '##                        (10%)'
sleep 1
echo '#####                     (33%)\r'
sleep 1
echo '#############             (66%)\r'
sleep 1
echo '###################       (78%)\r'
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
if [ stat = "No such file or directory $?" ]; then
   echo "Failed. Check network connection."
   exit 0
fi
#
if [ $TIMEDIFF -gt $OLDTIME ]; then
   echo "Failed. Check network connection."
fi
#
if [ $OLDTIME -gt $TIMEDIFF ]; then 
   echo "Completed succesfully. Please reboot."
fi
