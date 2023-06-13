#!/bin/bash
echo "******************************************************************************************" >> /home/prepatching.log;
echo "Please review this section before starting to patch systems:" >> /home/prepatching.log;
echo "******************************************************************************************" >> /home/prepatching.log;
echo >> /home/prepatching.log;
echo "Current system OS version:" >> /home/prepatching.log; echo "---------------------------------------------------------------------------------------" >> /home/prepatching.log; cat /etc/oracle-release >> /home/prepatching.log; echo >> /home/prepatching.log;
echo "Current kernel version:" >> /home/prepatching.log; echo "---------------------------------------------------------------------------------------" >> /home/prepatching.log; uname -a |awk {'print $3'} >> /home/prepatching.log; echo >> /home/prepatching.log;
echo "Next kernel version:" >> /home/prepatching.log; echo "---------------------------------------------------------------------------------------" >> /home/prepatching.log; yum list available|grep kernel.x86_64 >> /home/prepatching.log; echo >> /home/prepatching.log;
echo "Selinux status:" >> /home/prepatching.log; echo "---------------------------------------------------------------------------------------" >> /home/prepatching.log; getenforce >> /home/prepatching.log; echo >> /home/prepatching.log;
echo "Repo list:" >> /home/prepatching.log; echo "---------------------------------------------------------------------------------------" >> /home/prepatching.log; yum repolist >> /home/prepatching.log; echo >> /home/prepatching.log;
echo "System uptime report" >> /home/prepatching.log; echo "---------------------------------------------------------------------------------------" >> /home/prepatching.log; uptime >> /home/prepatching.log; echo >> /home/prepatching.log;
echo "YUM UPDATE COMMAND TEST" >> /home/prepatching.log; echo "---------------------------------------------------------------------------------------" >> /home/prepatching.log; yes n | yum update >> /home/prepatching.log; echo >> /home/prepatching.log;
