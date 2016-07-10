# http://stackoverflow.com/questions/4219970/warning-mysql-connect-2002-no-such-file-or-directory-trying-to-connect-vi
cd /var
sudo mkdir mysql
sudo chmod 755 mysql
cd mysql
sudo ln -s /tmp/mysql.sock mysql.sock

# http://stackoverflow.com/questions/5527676/warning-the-user-local-mysql-data-directory-is-not-owned-by-the-mysql-user
sudo chown -R _mysql:wheel /usr/local/mysql/data
