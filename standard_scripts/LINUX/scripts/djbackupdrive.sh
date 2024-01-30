#! /bin/bash


if [ $# -eq 0 ]; then
 echo Usage: djbackupdrive.sh {path}
 echo
else
 pushd . > /dev/null
 cd $1


 echo Deleting standard backup directories...
 echo BACKUP
 rm -r -f BACKUP
 
 echo Done!
 popd > /dev/null
fi
