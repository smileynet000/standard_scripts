#! /bin/bash


echo Making Directories for Each Type of DOS...
mkdir ALL
mkdir FreeDOS
mkdir PC-DOS
mkdir MS-DOS


cd ALL
pushd .
. mknastypes2.sh
popd
cd ..

cd FreeDOS
pushd .
. mknastypes2.sh
popd
cd ..

cd PC-DOS
pushd .
. mknastypes2.sh
popd
cd ..

cd MS-DOS
pushd .
. mknastypes2.sh
popd
cd ..
