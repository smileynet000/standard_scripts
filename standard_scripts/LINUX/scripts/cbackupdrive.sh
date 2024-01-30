#! /bin/bash


if [ $# -eq 0 ]; then
 echo Usage: cbackupdrive.sh {path}
 echo
else if [ $# -eq 1 ]; then
 pushd . > /dev/null
 cd $1


 echo Making standard backup directories...
 echo BACKUP
 mkdir BACKUP
 echo DATA
 mkdir DATA

 cd BACKUP
 pushd . > /dev/null
 . mkhostdirs.sh
 popd > /dev/null
 cd ..

 echo Done!
 popd > /dev/null
 fi
fi
