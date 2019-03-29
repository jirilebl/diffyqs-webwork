#!/bin/sh

rm -i diffyqs-webwork.tgz
cd ..
GZIP=-9 tar cvzf diffyqs-webwork.tgz --sort=name --exclude=".*" diffyqs-webwork/
mv diffyqs-webwork.tgz diffyqs-webwork/
