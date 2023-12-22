#! /bin/bash


if [ $# -eq 0 ]; then
 echo Usage: cbackupdrive2.sh {path}
 echo
else if [ $# -eq 1 ]; then
 pushd . > /dev/null
 cd $1


 echo Making standard backup directories...
 pushd . > /dev/null
 . mkhostdirs2.sh
 popd > /dev/null

 echo Done!
 popd > /dev/null
 fi
fi
