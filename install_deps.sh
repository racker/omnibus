#!/bin/bash
source /etc/environment # lazy
sudo apt-get update -y
sudo apt-get -y install build-essential binutils-doc autoconf flex bison git-core openjdk-6-jdk default-jdk ruby ruby1.8 ruby1.8-dev rdoc1.8 irb1.8 ri1.8 libopenssl-ruby1.8 rubygems libtool dpkg-dev libxml2 libxml2-dev libxslt1.1 libxslt1-dev help2man gettext texinfo
update-java-alternatives -s java-6-openjdk
gem install fpm ohai --no-rdoc --no-ri
ln -s /var/lib/gems/1.8/bin/* /usr/local/bin
wget https://github.com/technomancy/leiningen/raw/stable/bin/lein && sudo mv lein /usr/local/bin && sudo chmod 755 /usr/local/bin/lein
mkdir build
lein deps
