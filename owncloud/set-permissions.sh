#!/bin/bash
ocpath='/var/www/owncloud'
htuser='www-data'

find ${ocpath}/ -type f -print0 | xargs -0 -n 100 chmod 0644
find ${ocpath}/ -type d -print0 | xargs -0 -n 100 chmod 0755

chown -R root:${htuser} ${ocpath}/
chown -R ${htuser}:${htuser} ${ocpath}/apps/
chown -R ${htuser}:${htuser} ${ocpath}/config/
chown -R ${htuser}:${htuser} ${ocpath}/data/

chown root:${htuser} ${ocpath}/.htaccess
chown root:${htuser} ${ocpath}/data/.htaccess

chmod 0644 ${ocpath}/.htaccess
chmod 0644 ${ocpath}/data/.htaccess
#!/bin/bash
ocpath='/var/www/owncloud'
htuser='www-data'

find ${ocpath}/ -type f -print0 | xargs -0 -n 100 chmod 0644
find ${ocpath}/ -type d -print0 | xargs -0 -n 100 chmod 0755

chown -R root:${htuser} ${ocpath}/
chown -R ${htuser}:${htuser} ${ocpath}/apps/
chown -R ${htuser}:${htuser} ${ocpath}/config/
chown -R ${htuser}:${htuser} ${ocpath}/data/

chown root:${htuser} ${ocpath}/.htaccess
chown root:${htuser} ${ocpath}/data/.htaccess

chmod 0644 ${ocpath}/.htaccess
chmod 0644 ${ocpath}/data/.htaccess
