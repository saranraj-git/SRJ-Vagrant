### SRJ-Vagrant
Box Uploaded to 
https://app.vagrantup.com/saranrajv/boxes/ubuntu-desktop/versions/1

# To use the Ubuntu Virtual box with Desktop Installed 

$ vagrant init saranrajv/ubuntu-desktop 
$ vagrant up

# To use the Centos Virtual box with GNOME desktop installed

$ vagrant init saranrajv/centos7 
$ vagrant up



# To use postgres virtualbox in centos 7

$ vagrant init saranrajv/pgcentos7 
$ vagrant up


# To use postgres virtualbox in centos 7 with port forwarding (5432) to local machine

$ curl https://raw.githubusercontent.com/svenugopal333/SRJ-Vagrant/main/pgcentos7-Vagrantfile > Vagrantfile
$ vagrant up

