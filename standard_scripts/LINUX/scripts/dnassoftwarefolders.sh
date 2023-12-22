#! /bin/bash


if [ $# -eq 0 ]; then
 echo Usage: dnassoftwarefolders.sh {path}
 echo
else
 pushd . > /dev/null
 cd $1


echo Making Standard Directories for Software...

echo DOCUMENTATION
rm -r -f DOCUMENTATION

echo BOOTLOADERS
rm -r -f BOOTLOADERS

echo OPERATING_SYSTEMS
rm -r -f OPERATING_SYSTEMS

echo DRIVERS
rm -r -f DRIVERS

echo PATCHES
rm -r -f PATCHES

echo PROGRAMS
rm -r -f PROGRAMS

echo CONFIGURATION_FILES
rm -r -f CONFIGURATION_FILES

echo BACKUP
rm -r -f BACKUP

echo CUSTOM
rm -r -f CUSTOM


echo Done!

 popd > /dev/null
fi
