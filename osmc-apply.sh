#!/bin/bash

set -x

touch package.tar
ls | grep -v 'package.tar' | xargs tar -c -f package.tar
scp package.tar osmc:package.tar
ssh osmc 'mkdir puppet && cd puppet && tar -xf ../package.tar && puppet module install --modulepath=../puppet-modules puppetlabs/apt && puppet module install --modulepath=../puppet-modules --ignore-dependencies fortin-tor && sudo puppet apply --debug --modulepath=.:../puppet-modules osmc-manifest.pp'
ssh osmc 'rm -Rf puppet package.tar'
rm package.tar