node "testhost.example.com" {

  github::tarball { '/tmp/puppet.tgz':
    user     => 'puppetlabs',
    project  => 'puppet',
    branch   => '3.x',
  }

}
