# Fetch a zipball from a github-project.
define github::zipball(
  $user,
  $project,
  $branch = 'master',
  $file = $title,
) {

  exec { "curl-github-zip-${title}":
    command => "curl -L -o '${file}' 'http://github.com/${user}/${project}/zipball/${branch}'",
    unless  => "test -s '${file}'",
    path    => '/usr/bin:/usr/sbin',
    require => Class['github'],
  }
}
