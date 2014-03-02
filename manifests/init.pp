# This main github-class only defines the dependency of the curl-package.
# Curl is then used to fetch the files from github.
class github {

  package { 'curl':
    ensure => installed,
  }

}
