#!/bin/bash

sudo aptitude install -y puppet
sudo puppet apply --modulepath=/vagrant/modules /vagrant/manifests/bootstrap.pp
sudo puppet apply --modulepath=/vagrant/modules /vagrant/manifests/puppetmaster-init.pp
sudo rm -rf $(puppet master --configprint reportdir)/$(puppet agent --configprint certname)
sudo puppet agent -t --debug --server $(puppet agent --configprint certname)
cd /vagrant && sudo librarian-puppet install --path=/etc/puppet/modules
