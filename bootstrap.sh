#!/bin/bash

#--------------------------------------------------+
#                                                  |
#    Author: Kristoffer Paulsson                   |
#    Email: kristoffer.paulsson@gmail.com          |
#    Copyright: (c) 2015 Kristoffer Paulsson       |
#    License: MIT                                  |
#                                                  |
#--------------------------------------------------+

sudo apt-get update && apt-get upgrade

sudo apt-get install expect -y

## Install git

sudo apt-get install git -y

## Install Lamp-server
expect <<EOD

set timeout -1
spawn sudo tasksel install lamp-server
match_max 100000

expect "New password for the MySQL \"root\" user:"
sleep 1
send -- "vagrant\r"

expect "Repeat password for the MySQL \"root\" user:"
sleep 1
send -- "vagrant\r"

expect eof
EOD

### Install extra PHP modules
sudo apt-get install php5-curl php5-gmp php5-ldap php5-odbc php5-pgsql php5-recode php5-snmp php5-sqlite php5-tidy php5-xmlrpc php5-xsl php5-cli php5-gd php5-json php5-mcrypt php5-mysql php5-readline -y
sudo service apache2 restart

## Install phpMyAdmin
expect <<EOD

set timeout -1
spawn sudo apt-get install phpmyadmin
match_max 100000

expect "Do you want to continue?"
sleep .3
send -- "\r"

expect "Web server to reconfigure automatically:"
sleep .3
send -- " \r"

expect "Configure database for phpmyadmin with dbconfig-common?"
sleep .3
send -- "\[C\r"

expect eof
EOD

