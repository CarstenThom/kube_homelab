#!/bin/bash
#set -x
#rm -rf /home/webmaster/.ssh/known_hosts 
#ips="161 162 163"
#ips=($(awk '{print $1}' ./plana/ip.txt))
#echo ${ips[@]}
#for i in ${ips[@]}
#do
#    ssh -t -p 22 root@${i} "dd if=/dev/zero of=/dev/sda bs=446 count=1"
#    ssh -t -p 22 root@${i} "hexdump -C -n 446  /dev/sda"
#    ssh -t -p 22 root@${i} "hexdump -C -n 446 -v /dev/sda"
#    ssh -t -p 22 root@${i} "reboot"
#done

ssh -t -p 22 root@192.168.3.101 "dd if=/dev/zero of=/dev/sda bs=512 count=1"
ssh -t -p 22 root@192.168.3.101 "shutdown now"
ssh -t -p 22 root@192.168.3.102 "dd if=/dev/zero of=/dev/sda bs=512 count=1"
ssh -t -p 22 root@192.168.3.102 "shutdown now"

exit 0
