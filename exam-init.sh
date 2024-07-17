#/bin/bash

tar -xvf Rhce.tar  > /dev/null 2>&1

echo -ne '#####                      (33%)\r'

dnf install httpd -y     > /dev/null 2>&1
systemctl enable --now  httpd   > /dev/null 2>&1

echo -ne '##############             (50%)\r'

cp -rf Rhce  /var/www/html/Rhce     > /dev/null 2>&1
systemctl  restart httpd   > /dev/null 2>&1
wget  localhost/Rhce/init-dns.sh  > /dev/null 2>&1
sh init-dns.sh  > /dev/null 2>&1
wget  http://localhost/Rhce/initialscripts.sh    > /dev/null 2>&1
sh initialscripts.sh > /dev/null 2>&1
echo -ne '###########################(100%)\n'
