#!/bin/sh

#
set -e

# This directory (./scripts/)
cd $DOCUMENT_ROOT

# Switch to current plugin's root directory
cd ..

#
echo "<pre>"

#
for dir in scripts user;
do
  chown -v diradmin:diradmin ${dir}
  chown -v diradmin:diradmin ${dir}/*
  chmod -v 755 ${dir}
  chmod -v 755 ${dir}/*
done

#
chown -v diradmin:diradmin \
  LICENSE \
  plugin.conf

#
find assets -exec \
  chown -v diradmin:diradmin '{}' \;

#
find assets -type d -exec \
  chmod -v 755 '{}' \;

#
find assets -type f -exec \
  chmod -v 644 '{}' \;

#
echo "</pre>"

#
echo "<strong>Plugin Installed!</strong>"

#
exit 0
