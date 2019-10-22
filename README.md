# tcpTuning.io

## Explanation

This script will output a configuration file for Unix-like systems (sysctl.conf) with modified kernal and TCP stack settings designed to optimise network throughput and minimise latency. It is intended for a client device on a home network over either ethernet or WiFi 802.11n/ac with an expected download speed of 50mbps-100mbps.

## Usage

1. Run this script in Terminal and enter your password when prompted.

```bash
sudo curl -fsSL https://raw.githubusercontent.com/raumfahrerspiffy/tcptuning.io/master/sysctl.conf -o /etc/sysctl.conf -s
```

2. Reboot
