vagrant init centos/7

# Installation
sudo yum install postgresql-server postgresql-contrib -y
sudo postgresql-setup initdb
sudo systemctl start postgresql
sudo systemctl enable postgresql

#Configuration
sudo passwd postgres # Prompts for password so changed the password as postgres

#Edit pg_hba.conf
sudo vim /var/lib/pgsql/data/pg_hba.conf
host    all             all             0.0.0.0/0            password

#Edit postgresql.conf
sudo vim /var/lib/pgsql/data/postgresql.conf
sudo grep listen /var/lib/pgsql/data/postgresql.conf
listen_addresses = '*'


systemctl restart postgresql 

#Login to psql shell 
sudo -i -u postgres psql
GRANT ALL PRIVILEGES ON DATABASE postgres TO postgres;
ALTER USER postgres WITH SUPERUSER;
COMMIT;

create user pgadmin with superuser password 'pgadmin';
create database test;
GRANT ALL PRIVILEGES ON DATABASE test TO pgadmin;
ALTER USER pgadmin WITH SUPERUSER;
ALTER USER pgadmin WITH CREATEROLE;
ALTER USER pgadmin WITH CREATEDB;
ALTER USER pgadmin WITH REPLICATION;

COMMIT;
#In the host Operating system we can run the port forwarding on virtualbox
