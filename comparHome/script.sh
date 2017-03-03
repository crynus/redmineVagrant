#!/bin/bash
apt-get install redmine redmine-mysql
gem update
gem install bundler
touch /usr/share/redmine/Gemfile.lock
chown www-data:www-data /usr/share/redmine/Gemfile.lock
ln -s /usr/share/redmine/public /var/www/html/redmine
service apache2 restart
