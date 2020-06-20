#!/bin/bash

echo '========download models start========'
projectRoot=.
if [ -n "$1" ]; then
  projectRoot=$1
fi
echo '========projectRoot:' ${projectRoot} '========'

wget "http://thulac.thunlp.org/source/Models_v1_v2(v1_2).zip"
unzip -d models "Models_v1_v2(v1_2).zip"

mv models ${projectRoot}/models

echo '========download models finish========'
ls -l -a -h ${projectRoot}/models
