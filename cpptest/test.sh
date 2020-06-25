#!/bin/bash

cd ../
pwd
rm build/ -rf
cmake -G "Unix Makefiles" -B build .
ls -a -l -h

cd build || exit
make
./ThulacgoTest
