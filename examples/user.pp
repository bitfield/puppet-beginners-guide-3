user { 'www-data':
  ensure => present,
  uid    => '33',
  home   => '/var/www',
  shell  => '/usr/sbin/nologin',
}
