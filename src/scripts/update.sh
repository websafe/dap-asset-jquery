#!/bin/sh
#
# Copyright (c) 2015 Thomas Szteliga <ts@websafe.pl>, <https://websafe.pl/>
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

#
set -e

# This directory (./scripts/)
cd $DOCUMENT_ROOT

# Switch to current plugin's root directory
cd ..

#
echo "<pre style=\"text-align: left !important\">"

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
echo "<strong>Plugin has been updated!</strong>"

#
exit 0
