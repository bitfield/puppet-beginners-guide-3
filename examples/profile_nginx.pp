# Install Nginx from mainline repo
class profile::nginx {
  class { 'nginx':
    manage_repo    => true,
    package_source => 'nginx-mainline',
  }

}
