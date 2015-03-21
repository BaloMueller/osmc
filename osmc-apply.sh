#!/bin/bash

set -x

touch package.tar
ls | grep -v 'package.tar' | xargs tar -u -f package.tar
scp package.tar osmc:package.tar
ssh osmc 'mkdir puppet && cd puppet && tar -xf ../package.tar && sudo puppet apply --test --modulepath=. osmc-manifest.pp'
ssh osmc 'rm -Rf puppet package.tar'
rm package.tar