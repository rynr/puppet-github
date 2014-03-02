# This main github-class only defines the dependency of the curl-package.
# Curl is then used to fetch the files from github.
class github {

  # Package['curl'] could already be defined somewhere else
  if ! defined(Package['curl']) {
    package { 'curl':
      ensure => installed,
    }
  }

}
