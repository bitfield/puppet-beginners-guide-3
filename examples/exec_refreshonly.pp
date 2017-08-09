package { 'postfix':
  ensure => installed,
}

file { '/etc/aliases':
  content => 'root: admin@example.com',
  notify  => Exec['newaliases'],
}

exec { 'newaliases':
  command     => '/usr/bin/newaliases',
  refreshonly => true,
}
