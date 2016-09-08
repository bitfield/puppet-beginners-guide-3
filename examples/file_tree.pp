file { '/etc/config_dir':
  source  => '/vagrant/examples/files/config_dir',
  recurse => true,
}
