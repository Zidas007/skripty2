#!/bin/bash

cas=`date +%T`
echo "Aktualní Čas je:"$cas
ip=`ifconfig | grep Všesměr | awk -F ":" '{print $2}' | awk -F " " '{print $1}'`
echo "Moje IP:"$ip
rx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $2}' | awk -F ")" '{print $1}'`
echo "Přijatá data:"$rx 
neco=`ifconfig eth0 | grep Odesláno | awk -F "(" '{print $3}' | awk -F ")" '{print $1}'`
echo "Odeslaná data:"$neco
 
echo "<html>" > zidek.html
echo "<body>" >> zidek.html
echo $cas >> zidek.html
echo "<br>" >> zidek.html
echo $ip >> zidek.html
echo "<br>" >> zidek.thml
echo $rx >> zidek.html
echo "<br>" >> zidek.html
echo $neco >> zidek.html
echo "<br>" >> zidek.html
echo "</body>" >> zidek.html
echo "</html>" >> zidek.html

