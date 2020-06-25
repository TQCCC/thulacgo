#!/bin/bash

cd ../
pwd
rm build/ -rf && cmake -G "Unix Makefiles" -B build . && cd build && make && ./ThulacgoTest
