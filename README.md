puppet-github
=============

Download Tarballs from Github

Requires
--------

 * *curl*-Package (retrieved automaticly)

Quickstart
----------

Install puppet-github to your modules (when you use git, it's easiest to
*git submodule add git://github.com/rynr/puppet-github.git modules/github*).

Now you can use this for your manifest:

    github::tarball { '/tmp/puppet.tgz':
      user     => 'puppetlabs',
      project  => 'puppet',
      branch   => '3.x',
    }

Branch is not required, *master* will be fetched, if not given.

Maintenance
-----------

This project is not maintained any more. I'm not using puppet any more, sorry for that.  
If you want to take over support, feel free to contact me.

License
-------

    puppet-github  Copyright (C) 2012-2015 Rainer Jung
    This program comes with ABSOLUTELY NO WARRANTY; This is free software,
    and you are welcome to redistribute it under certain conditions;
    For details see LICENSE-file bundled with this file.

Links
-----

 * [Info](http://rynr.github.io/puppet-github)
 * [Puppetforge](http://forge.puppetlabs.com/rjung/github)
 * [Github](http://github.com/rynr/puppet-github)
 * [![Build Status](https://travis-ci.org/rynr/puppet-github.png?branch=master)](https://travis-ci.org/rynr/puppet-github)
