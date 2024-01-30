#! /bin/sh


echo Uninstalling standard scripts...
echo

while read line
do

if [ -f /bin/${line} ]; then
 if [ ${line} != "uninstall-standard_scripts.sh" ]; then
  echo Removing /bin/${line}
  sudo rm -f /bin/${line}
 else
  echo WARNING: Cannot delete uninstall file!
 fi
else
 echo ${line} doesn\'t exist!
fi

done < /usr/share/standard_scripts/commands.txt

sudo rm -r -f /usr/share/standard_scripts


echo
echo
