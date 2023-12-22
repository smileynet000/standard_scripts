#! /bin/bash


echo COMPUTER
mkdir COMPUTER
echo ROUTER
mkdir ROUTER
echo APs
mkdir APs
echo ORGANIZER
mkdir ORGANIZER
echo NAS
mkdir NAS
echo EXTERNAL_DRIVES
mkdir EXTERNAL_DRIVES

pushd . > /dev/null
cd COMPUTER
echo COMPUTER/BACKUP
mkdir BACKUP
echo COMPUTER/PATTERNS
mkdir PATTERNS
echo COMPUTER/SETTINGS
mkdir SETTINGS

echo COMPUTER/SETTINGS/...
cd SETTINGS
pushd . > /dev/null
. mkchosts.sh
popd > /dev/null
cd ..

echo COMPUTER/BACKUP/...
cd BACKUP
pushd . > /dev/null
. mkchosts2.sh
popd > /dev/null
cd ..

cd ..

echo ROUTER/...
cd ROUTER
pushd . > /dev/null
. mkrhosts.sh
popd > /dev/null
cd ..

echo APs/...
cd APs
pushd . > /dev/null
. mkaphosts.sh
popd > /dev/null
cd ..

echo ORGANIZER/...
cd ORGANIZER
pushd . > /dev/null
. mkohosts.sh
popd > /dev/null
cd ..

echo NAS/...
cd NAS
pushd . > /dev/null
. mknashosts.sh
popd > /dev/null
cd ..

echo EXTERNAL_DRIVES/...
cd EXTERNAL_DRIVES
pushd . > /dev/null
. mkextdrhosts.sh
popd > /dev/null
cd ..


popd > /dev/null
