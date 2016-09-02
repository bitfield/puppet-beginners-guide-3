file { '/etc/this_is_a_link':
  ensure => link,
  target => '/etc/motd',
}
