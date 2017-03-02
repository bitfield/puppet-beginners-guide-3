group { 'devs':
  ensure => present,
  gid    => 3000,
}

user { 'hsing-hui':
  ensure => present,
  uid    => '3001',
  home   => '/home/hsing-hui',
  shell  => '/bin/bash',
  groups => ['devs'],
}
