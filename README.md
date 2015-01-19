# lamp-vagrant
This is supposed to be an easy Vagrant setup of an Ubuntu based LAMP environment. The current version is based on Ubuntu 14.04 x64, the ubuntu/precise64 box.
The power of this setup is that it supports LAMP out of the box. You keep your own computer clean. You can throw away the box whe nyou want. You work in your favorite browser on the host computer. The server directory is directly accessible with your favorite IDE. No more pushing files over ftp, or having to install server stuff on your own desktop machine.

Provisioned tools:

* Git
* Full LAMP-stack
* All (nearly) PHP extensions
* phpMyAdmin
* Composer


Installation
- - - - - - -

You need Git and Vagrant installed on your computer.

1. First you clone this repo with your Git.

	An alternative is to copy the visible files to another location if you are going
	to create a git repository for your project.

2. Thereafter you type "vagrant up"

	It will take some time to provision your box. First the box itself will be downloaded.
	Thereafter the whole LAMP stack will be installed and configured.

3. Open your browser and go to "http://localhost:8080" There should be a phpinfo page.


Tips
- - - 

 - You could ssh into your box by doing: ssh vagrant@localhost -p 2222

 - If you have an international keyboard like me you can change the keyboard layout by doing: sudo dpkg-reconfigure keyboard-configuration

 - You will find phpMyAdmin at: http://localhost:8080/phpmyadmin

 - If you want to edit the database with a Database tool you can access the server by doing: mysql -u "root" -pvagrant -e "GRANT ALL PRIVILEGES ON localhost TO 'root'@'%' IDENTIFIED BY 'vagrant' WITH GRANT OPTION;"
