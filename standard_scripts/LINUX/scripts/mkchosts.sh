#! /bin/bash



echo Making directories to match known computer host names...


cat /etc/settings/hosts/computers.sdr | while read line
do
 echo Creating $line...
 if [ -f $line ]; then   
  echo There\'s already a directory named $line 
 else
  mkdir $line
 fi
done
