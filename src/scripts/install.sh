#!/bin/sh

echo "Plugin Installed!"

cd $DOCUMENT_ROOT # this directory
cd ..
for dir in user reseller admin;
do
    chmod 755 $dir/*
    chown diradmin:diradmin $dir/*
done

exit 0
