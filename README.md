#  tcpTuning.io

## Explanation

This script will output a configuration file for macOS and other Unix-like systems (sysctl.conf) with modified kernel and TCP stack settings designed to optimise network throughput and minimise latency. These settings will be applied at boot. The modified paremeters are intended for a client device on a home network over either ethernet or WiFi 802.11n/ac with a download speed of 50mbps-100mbps from your ISP.

Tested up to macOS Catalina | 
File version 1.1 |
10/21/19

## Usage

Run this script in Terminal and enter your password when prompted.

```bash
sudo curl -fsSL https://raw.githubusercontent.com/raumfahrerspiffy/tcptuning.io/master/sysctl.conf -o /etc/sysctl.conf -s
```
Reboot.

## *Note:*
System Integrity Protection must be disabled to access the intended file location. To disable, reboot into the Recovery Partition by pressing ⌘+R at boot until the Apple logo appears. 
Run this command in Terminal:

```bash
csrutil disable
```

After using the script you can re-enable SIP by swapping the above command with:

```bash
csrutil enable
```
