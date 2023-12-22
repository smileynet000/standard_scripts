#! /bin/bash


pushd .


echo Making directories for each type of Windows...
mkdir ALL
mkdir 95
mkdir 98
mkdir XP

cd XP
mkdir ALL
mkdir HOME
mkdir PRO
mkdir MCE
cd ..

cd ALL
pushd .
. ./mknames.sh
popd
cd ..

cd 95
pushd .
. mknames.sh
popd
cd ..

cd 98
pushd .
. mknames.sh
popd
cd ..

cd XP
cd ALL
pushd .
. mknames.sh
popd
cd ..

cd HOME
pushd .
. mknames.sh
popd
cd ..

cd PRO
pushd .
. mknames.sh
popd
cd ..

cd MCE
pushd .
. mknames.sh
popd
cd ..
cd ..


popd
