
class github($user, $project, $branch = 'master') {

  package { 'curl':
    ensure => installed,
  }

}

define github::tarball($user, $project, $branch = 'master') {
  include github

  exec { "curl-$name":
    command => "curl -o '$name' 'http://github.com/$user/$project/tarball/$branch'",
    unless  => "test -s '$name'",
    path    => '/usr/bin:/usr/sbin',
    require => Class['github'],
  }
}

