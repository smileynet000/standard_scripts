#! /bin/bash


if [ $# -eq 0 ]; then
 echo Usage: cnassoftwarefolders.sh {path}
 echo
else
 pushd . > /dev/null
 cd $1


echo Making Standard Directories for Software...

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


echo Making Directories for Operating Systems...
cd BOOTLOADERS
pushd . > /dev/null
. mknasosnames.sh
popd > /dev/null
cd ..

cd OPERATING_SYSTEMS
pushd . > /dev/null
. mknastypes2.sh
popd
cd ..

cd DRIVERS
pushd . > /dev/null
. mknasosnames.sh
popd
cd ..

cd PATCHES
pushd . > /dev/null
. mknasosnames.sh
popd > /dev/null
cd ..

cd PROGRAMS
pushd . > /dev/null
. mknasosnames.sh
popd > /dev/null
cd ..

cd CONFIGURATION_FILES
pushd . > /dev/null
. mknasosnames.sh
popd > /dev/null
cd ..

cd BACKUP
cd ..

cd CUSTOM
mkdir READY
cd READY
pushd . > /dev/null
. mknasosnames.sh
popd > /dev/null
cd ..
mkdir NOT_READY
cd NOT_READY
pushd . > /dev/null
. mknasosnames.sh
popd > /dev/null
cd ..
cd ..

echo Done!

 popd > /dev/null
fi
