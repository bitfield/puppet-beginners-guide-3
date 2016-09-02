file { '/etc/config_dir':
  source  => '/vagrant/examples/config_dir',
  recurse => true,
}
