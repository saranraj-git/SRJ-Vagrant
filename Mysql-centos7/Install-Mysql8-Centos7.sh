sudo hostnamectl set-hostname learnmysql.example

sudo rpm -Uvh https://repo.mysql.com/mysql80-community-release-el7-3.noarch.rpm

sudo sed -i 's/enabled=1/enabled=0/' /etc/yum.repos.d/mysql-community.repo

sudo yum --enablerepo=mysql80-community install mysql-community-server -y

sudo systemctl start mysqld
sudo systemctl enable mysqld

sudo grep "A temporary password" /var/log/mysqld.log

sudo mysql_secure_installation

sudo systemctl restart mysqld


"""
mysql -u root -p

root
Itiseasy1!

CREATE USER 'mysqladmin'@'localhost' IDENTIFIED BY 'Itiseasy1!';
CREATE USER 'mysqladmin'@'%' IDENTIFIED BY 'Itiseasy1!';
GRANT ALL PRIVILEGES ON *.* TO 'mysqladmin'@'localhost';
GRANT ALL PRIVILEGES ON *.* TO 'mysqladmin'@'%';
FLUSH PRIVILEGES;

Installed mysql8.0 in centos 7

mysql username : mysqladmin
mysql password :  Itiseasy1!

"""