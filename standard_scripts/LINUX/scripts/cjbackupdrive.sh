#! /bin/bash


if [ $# -eq 0 ]; then
 echo Usage: cjbackupdrive.sh {path}
 echo
else
 pushd . > /dev/null
 cd $1


 echo Making standard backup directories...
 echo BACKUP
 mkdir BACKUP

 cd BACKUP
 pushd . > /dev/null
 . mkhostdirs.sh
 popd > /dev/null
 cd ..

 echo Done!
 popd > /dev/null
fi
