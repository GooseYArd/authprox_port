#!/bin/sh

set -e

make clean distclean
rm -f distinfo  
rm -f /usr/ports/plist/amd64/authprox-1.0 
make fetch
make makesum

make rebuild
make repackage
make reinstall
