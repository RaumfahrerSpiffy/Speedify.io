sudo echo '#####                     (33%)\r'
sleep 2
echo '#############             (66%)\r'
sleep 2
echo '#######################   (100%)\r'
echo '\n'

curl -fsSL https://raw.githubusercontent.com/raumfahrerspiffy/tcptuning.io/master/sysctl.conf -o ~/Desktop/sysctl.conf -s

echo Completed succesfully. Please reboot.
