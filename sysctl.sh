#!/bin/bash
#
cat << EEF

 _______  _____  _______ _______ ______  _____ _______ __   __   _____  _____ 
 |______ |_____] |______ |______ |     \   |   |______   \_/       |   |     |
 ______| |       |______ |______ |_____/ __|__ |          |    . __|__ |_____|                                                                                                                        
===============================================================================
EEF
sleep 2
#
#SIPchecker=($(csrutil status | awk '{ print $5 }'))
#if [ "$SIPchecker" != "disabled." ]; then
#    echo "Disable SYSTEM INTEGRITY PROTECTION...then re-run script"
#    sleep 1
#    echo "Refer to README for help";
#    exit 0
#fi
#
echo "AUTHENTICATING"
#
sudo curl -fsSL https://raw.githubusercontent.com/raumfahrerspiffy/tcptuning.io/master/sysctl.conf -o /etc/sysctl.conf -s
#
sleep 1
echo "ACCESS GRANTED"
#
echo "\n"
#
sleep 1
#
echo "INITIALISING CONNECTION"
sleep 2
echo "CONNECTION SECURED"
sleep 2
echo "WORKING..."
sleep 2
echo '--                        (10%)'
sleep 1
echo '-----                     (33%)\r'
sleep 2
echo '-------------             (66%)\r'
sleep 1
echo '-------------------       (78%)\r'
sleep 2
echo '-----------------------   (100%)\r'
echo "\n"
sleep 2
#
if test -e /etc/sysctl.conf; then
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
FILE=/etc/sysctl.conf
OLDTIME=30
CURTIME=$(date +%s)
FILETIME=$(stat -t %s -f %m $FILE)
TIMEDIFF=$(expr $CURTIME - $FILETIME)
#
if [ $TIMEDIFF -gt $OLDTIME ]; then
   echo "CRITICAL FAULT"
   sleep 2
   echo "UNABLE TO ACCESS REQUIRED LOCAL DIRECTORY"
   sleep 1
   echo "CONNECTION TERMINATED"
fi
#
if [ $OLDTIME -gt $TIMEDIFF ]; then 
   echo "TASK SUCCESSFUL"
   sleep 1
   echo "REBOOT NOW"
fi
echo "\n"
sleep 3
#
osascript -e 'tell app "loginwindow" to «event aevtrrst»'
