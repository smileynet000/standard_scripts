#! /bin/bash


pushd . > /dev/null


echo Making directories for each operating system...
mkdir ALL
mkdir WINDOWS
mkdir DOS
mkdir LINUX

cd ALL
pushd . > /dev/null
. mknames2.sh
popd > /dev/null
cd ..

cd WINDOWS
pushd . > /dev/null
. mknames2.sh
popd > /dev/null
cd ..

cd LINUX
pushd . > /dev/null
. mknames2.sh
popd > /dev/null

cd DOS
pushd . > /dev/null
. mknames2.sh
popd > /dev/null
cd ..


popd > /dev/null
