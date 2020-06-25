#!/bin/bash

cd ../
pwd
ls -a -l -h
rm build/ -rf
cmake -G "Unix Makefiles" -B build .
cd build || exit
make
./ThulacgoTest
