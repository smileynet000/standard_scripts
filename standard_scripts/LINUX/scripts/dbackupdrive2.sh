#! /bin/bash


if [ $# -eq 0 ]; then
 echo Usage: dbackupdrive2.sh {path}
 echo
else
 pushd . > /dev/null
 cd $1


 echo Deleting standard backup directories...
 . umkhostdirs.sh

 echo Done!
 popd > /dev/null
fi
