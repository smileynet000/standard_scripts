#! /bin/bash


if [ $# -eq 0 ]; then
 echo Usage: cnasbackupdrive.sh {path}
 echo
else
 pushd . > /dev/null
 cd $1


 echo Making standard backup directories...
 pushd . > /dev/null
 . mkhostdirs.sh
 popd > /dev/null

 echo Done!
 popd > /dev/null
fi
