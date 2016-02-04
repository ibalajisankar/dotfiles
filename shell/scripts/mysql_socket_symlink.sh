# http://stackoverflow.com/questions/4219970/warning-mysql-connect-2002-no-such-file-or-directory-trying-to-connect-vi
cd /var 
sudo mkdir mysql
sudo chmod 755 mysql
cd mysql
sudo ln -s /tmp/mysql.sock mysql.sock