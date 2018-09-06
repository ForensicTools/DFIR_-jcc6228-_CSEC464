#!/bin/bash

FILE="output.txt"

CURTIME=`date`
TZ=`date +%Z`
UP=`uptime`
echo "Time:" >> $FILE
echo "Current Time: " $CURTIME >> $FILE
echo "Time Zone: " $TZ >> $FILE
echo "PC Uptime: " $UP >> $FILE
echo "" >> $FILE

OS=`cat /etc/os-release`
KERNEL=`uname -r`
echo "OS Information: " >> $FILE
echo $OS >> $FILE
echo "Kernel Version: " $KERNEL >> $FILE
echo "" >> $FILE

CPU=`cat /proc/cpuinfo`
FREE=`free`
MEM=`cat /proc/meminfo`
DF=`df -h`
FDISK=`sudo fdisk -l`
echo "CPU Information: " >> $FILE
echo $CPU >> $FILE
echo "" >> $FILE
echo "Memory Information: " >> $FILE
echo $FREE >> $FILE
echo $MEM >> $FILE
echo "" >> $FILE
echo "HDD Information: " >> $FILE
echo $DF >> $FILE
echo $FDISK >> $FILE
echo "" >> $FILE

echo "Hostname: " `hostname` >> $FILE
echo "Domain Name: " `domainname` >> $FILE
echo "" >> $FILE

echo "User Information: " `cat /etc/passwd` >> $FILE
echo "Login History: " `last` >> $FILE
echo "" >> $FILE

echo "Services: " >> $FILE
echo `service --status-all` >> $FILE
echo "" >> $FILE

echo "Scheduled Tasks: " >> $FILE
echo `cat /etc/crontab` >> $FILE
echo "" >> $FILE

echo "ARP Table: " >> $FILE
echo `arp -a` >> $FILE
echo "" >> $FILE

echo "IP Information: " >> $FILE
echo `ifconfig -a` >> $FILE
echo "" >> $FILE

echo "Routing Table: " >> $FILE
echo `route -n` >> $FILE
echo "" >> $FILE

echo "Established Connections (netstat): " >> $FILE
echo `netstat -s` >> $FILE
echo "" >> $FILE

echo "DNS Cache (dig): " >> $FILE
echo `dig` >> $FILE
echo "" >> $FILE

echo "Printers: " >> $FILE
echo `lpstat -p` >> $FILE
echo "" >> $FILE

echo "Samba shares: " >> $FILE
echo `sudo smbstatus` >> $FILE
echo "" >> $FILE

echo "List of all installed software: " >> $FILE
echo `apt list --installed` >> $FILE
echo "" >> $FILE

echo "Processes: " >> $FILE
echo `ps` >> $FILE
echo "" >> $FILE

echo "Driver Information: " >> $FILE
echo `lshw` >> $FILE
echo "" >> $FILE

cd Downloads
ls
cd
cd Documents
ls
