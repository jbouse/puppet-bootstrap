Pull puppet up by it's bootstraps
=================================

This is a quick and dirty way to get a Puppet master server stood up with:

* PuppetLabs Puppet Master/Agent
* Apache with Passenger
* PuppetDB with PostgreSQL
* librarian-puppet

There is also a Vagrant configuration included that will bootstrap for local
testing environment which exposes the PuppetDB dashboard and Puppet master.

Initial setup
-------------
To setup the local environment simply run the following:

    gem install librarian-puppet
    librarian-puppet install

To boot up under Vagrant simply execute:

    vagrant up
