#! /bin/bash


if [ $# -eq 0 ]; then
 echo Usage: csoftwarefolders.sh {path}
 echo
else
 pushd . > /dev/null
 cd $1


echo Making Standard Directories for Software...

echo Making Base Directories...
echo SOFTWARE
mkdir SOFTWARE
cd SOFTWARE


echo DOCUMENTATION
mkdir DOCUMENTATION

echo BOOTLOADERS
mkdir BOOTLOADERS

echo OPERATING_SYSTEMS
mkdir OPERATING_SYSTEMS

echo DRIVERS
mkdir DRIVERS

echo PATCHES
mkdir PATCHES

echo PROGRAMS
mkdir PROGRAMS

echo CONFIGURATION_FILES
mkdir CONFIGURATION_FILES

echo BACKUP
mkdir BACKUP

echo CUSTOM
mkdir CUSTOM


echo Making Directories for Operating Systems and People...
cd DOCUMENTATION
. mknames2.sh
cd ..

cd BOOTLOADERS
. mkosnames.sh
cd ..

cd OPERATING_SYSTEMS
. mknames.sh
cd ..

cd DRIVERS
. mkosnames.sh
cd ..

cd PATCHES
. mkosnames.sh
cd ..

cd PROGRAMS
. mkosnames.sh
cd ..

cd CONFIGURATION_FILES
. mkosnames.sh
cd ..

cd BACKUP
. mknames2.sh
cd ..

cd CUSTOM
mkdir READY
cd READY
. mkosnames.sh
cd ..
mkdir NOT_READY
cd NOT_READY
. mkosnames.sh
cd ..
cd ..

echo Done!

 popd > /dev/null
fi
