#!/bin/bash
cas=`date +%T`
ip=`ifconfig | grep Všesměr | awk -F ":" '{print $2}' | awk -F " " '{print $1}'`
rx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $2}' | awk -F ")" '{print $1}'`
tx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $3}' | awk -F ")" '{print $1}'`
lidi=`who |wc -l`
disk=`df -h | grep sda1 | awk -F " " '{print $2}'`
neco=`df -h | grep sda1 | awk -F " " '{print $3}'`
neco1=`df -h | grep sda1 | awk -F " " '{print $4}'`
neco2=`df -h | grep sda1 | awk -F " " '{print $5}'`

echo "Aktualni cas: "$cas >> /home/student/Plocha/skripty2/index.html
echo "Moje IP: "$ip >> /home/student/Plocha/skripty2/index.html
echo "Prijata data: "$rx >> /home/student/Plocha/skripty2/index.html
echo "Odeslana data: "$tx >> /home/student/Plocha/skripty2/index.html
echo "Lidi na pocitaci:"$lidi >> /home/student/Plocha/skripty2/index.html
echo "Velikost disku:"$disk >> /home/student/Plocha/skripty2/index.html
echo "Uzito disku:"$neco >> /home/student/Plocha/skripty2/index.html
echo "Volne misto na disku:"$neco1 >> /home/student/Plocha/skripty2/index.html
echo "Procento vyuziti disku:"$neco2 >> /home/student/Plocha/skripty2/index.html
echo "<br><br>" >> /home/student/Plocha/skripty2/index.html

