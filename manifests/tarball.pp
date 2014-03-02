# Fetch a tarball from a github-project.
define github::tarball(
  $user,
  $project,
  $branch = 'master',
  $file = $title,
) {
  include github

  exec { "curl-tar-$title":
    command => "curl -L -o '$file' 'http://github.com/$user/$project/tarball/$branch'",
    unless  => "test -s '$file'",
    path    => '/usr/bin:/usr/sbin',
    require => Class['github'],
  }
}
