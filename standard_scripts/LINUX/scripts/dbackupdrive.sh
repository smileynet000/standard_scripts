#! /bin/bash


if [ $# -eq 0 ]; then
 echo Usage: dbackupdrive.sh {path}
 echo
else
 pushd . > /dev/null
 cd $1


 echo Deleting standard backup directories...
 
 echo BACKUP
 rm -r -f BACKUP

 echo DATA
 rm -r -f DATA
 
 echo Done!
 popd > /dev/null
fi
