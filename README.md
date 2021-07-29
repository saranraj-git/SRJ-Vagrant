# My Vagrant Account and my boxes:
https://app.vagrantup.com/saranrajv

### To use the Ubuntu Virtual box with Desktop Installed 

vagrant init saranrajv/ubuntu-desktop 

vagrant up

### To use the Centos Virtual box with GNOME desktop installed

vagrant init saranrajv/centos7 

vagrant up


### To use postgres virtualbox in centos 7

vagrant init saranrajv/pgcentos7 

vagrant up


### To use postgres virtualbox in centos 7 with port forwarding (5432) to local machine

curl https://raw.githubusercontent.com/svenugopal333/SRJ-Vagrant/main/Postgres-Centos7/pgcentos7-Vagrantfile > Vagrantfile

vagrant up

### To start using the postgresql in the localmachine 

psql -h 127.0.0.1 -p 5432 -d postgres -U pgadmin -W 

### To use dbt postgres virtualbox in centos 7 with port forwarding (5432) to local machine

curl https://raw.githubusercontent.com/svenugopal333/SRJ-Vagrant/main/DBT-Postgres-Centos7/dbt-Vagrantfile > Vagrantfile

vagrant up


### To use mysql virtualbox in centos 7 with port forwarding (3306) to local machine (3306)

curl https://raw.githubusercontent.com/svenugopal333/SRJ-Vagrant/main/Mysql-centos7/mysql-Vagrantfile > Vagrantfile

vagrant up
