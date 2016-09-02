file { '/etc/owned_by_vagrant':
  ensure => present,
  owner  => 'vagrant',
  group  => 'vagrant',
}
