#!/bin/sh

echo Restoring mtime...
git restore-mtime
echo Deleting old tgz ...
rm -i diffyqs-webwork.tgz
cd ..
echo Making new tgz ...
GZIP=-9 tar cvzf diffyqs-webwork.tgz --sort=name --exclude=".*" diffyqs-webwork/
mv diffyqs-webwork.tgz diffyqs-webwork/
