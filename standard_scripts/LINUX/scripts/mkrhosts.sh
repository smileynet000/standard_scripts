#! /bin/bash


echo Making directories to match known router host names...
while read line
do
 echo Creating $line...
 if [ -d $line ]; then
  echo There\'s already a directory named $line!
 else
  mkdir $line
 fi
done < /etc/settings/hosts/routers.sdr
