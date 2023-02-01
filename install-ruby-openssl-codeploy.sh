#!/bin/bash

## Install RVM packages managers for ruby
gpg2 --keyserver hkp://keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable --ruby

## Install OpenSSL 1.1 and Ruby 2.7 with RVM
rvm pkg install openssl
rvm install ruby-2.7 --with-openssl-dir=/usr/local/rvm/usr

## Install AWS CodeDeploy Agent
yum install chkconfig
wget https://aws-codedeploy-eu-west-1.s3.eu-west-1.amazonaws.com/latest/install
chmod +x ./install
./install auto
