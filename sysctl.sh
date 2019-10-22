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
#    echo "Disable SYSTEM INTEGRITY PROTECTION...then re-run script"
#    sleep 1
#    echo "Refer to README for help";
#    exit 0
#fi
#
curl -fsSL https://raw.githubusercontent.com/raumfahrerspiffy/tcptuning.io/master/sysctl.conf -o ~/desktop/sysctl.conf -s
#
sed G
echo "INITIALISING CONNECTION"
sleep 2
echo "CONNECTION SECURED"
sleep 2
echo "WORKING..."
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
sleep 2
#
if test -e ~/desktop/sysctl.conf; then
   echo "DOWNLOAD COMPLETE"
   sleep 2
else 
   echo "CRITICAL FAULT"
   sleep 2
   echo "EXPECTED FILE DOES NOT EXIST"
   sleep 2
   echo "CONNECTION TERMINATED"
   exit 0
fi
#
FILE=~/desktop/sysctl.conf
OLDTIME=20
CURTIME=$(date +%s)
FILETIME=$(stat -t %s -f %m $FILE)
TIMEDIFF=$(expr $CURTIME - $FILETIME)
#
sed G
#
if [ $TIMEDIFF -gt $OLDTIME ]; then
   echo "CRITICAL FAULT"
   sleep 2
   echo "UNABLE TO ACCESS REQUIRED LOCAL DIRECTORY"
   sleep 2
   echo "CONNECTION TERMINATED"
fi
#
sed G
#
if [ $OLDTIME -gt $TIMEDIFF ]; then 
   echo "TASK SUCCESSFUL"
   sleep 2
   echo "REBOOT NOW"
fi
