# osmc
Stuff related to my Raspberry 2 Open Source Media Center

`osmc-manifest.pp`
This puppet manifest installs basic stuff like 'vim', 'htop', 'build-essential' and 'git'.
Additionally it installs a tor client.

`osmc-apply.pp`
This file copies everything to the osmc using scp and then executes the manifest.

`owncloud`
Selfwritten owncloud puppet module https://owncloud.org/
