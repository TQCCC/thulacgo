#!/bin/bash

echo '======retrieve models======'
pwd
ls -l -a -h

if [ ! -d "models" ]; then
    echo '======models does not exists, download it======'
    wget "http://thulac.thunlp.org/source/Models_v1_v2(v1_2).zip"
    unzip -o "Models_v1_v2(v1_2).zip"
else
    echo '======models already exists======'
fi

ls -l -a -h

echo '======models content======'
ls -l -a -h models
