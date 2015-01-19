# -*- mode: ruby -*-
# vi: set ft=ruby :

#--------------------------------------------------+
#                                                  |
#    Author: Kristoffer Paulsson                   |
#    Email: kristoffer.paulsson@gmail.com          |
#    Copyright: (c) 2015 Kristoffer Paulsson       |
#    License: MIT                                  |
#                                                  |
#--------------------------------------------------+

Vagrant.configure(2) do |config|

  config.vm.box = 'ubuntu/trusty64'

  config.vm.network 'forwarded_port', guest: 80, host: 8080
  config.vm.network 'forwarded_port', guest: 3306, host: 8306

  config.vm.synced_folder '.', '/vagrant', disabled: true
  config.vm.synced_folder 'src/', '/var/www/html', 
  :owner=>'www-data', :group=>'www-data', 
  :mount_options=>['dmode=775', 'fmode=664']

  config.vm.provider "virtualbox" do |vb|

    vb.gui = false
    vb.memory = "1024"

  end

  config.vm.provision :shell, path: 'bootstrap.sh'

end
