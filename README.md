# Vagrant + Salt + LAMP + Wordpress + phpMyAdmin

Just the required stuff to generate a Vagrant CentOS6 instance with the following features:

 - Bridged network
 - A user called monitoring with a RSA public key defined at salt pillar
 - Deploy MySQL restricted listening at localhost and unix sockets, and with a administrator role 'sqladmin' (password 'samplepass')
 - Deploy a public Wordpress site called Site1 (http://IP/site1), change the default time, publish an example post and install a plugin to allow using any IP or hostname.
 - Deploy a public phpMyAdmin (http://IP/phpmyadmin/)

Vagrant code is based on code from [JustinCarmony](https://github.com/JustinCarmony), available at https://github.com/JustinCarmony/vagrant-salt-example

# Improving the code or adding features

To test inside the instance, you can use the script /vagrant/salt-apply (and use scp to move the code between the host and the guest instances
