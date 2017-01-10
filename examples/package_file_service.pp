package { 'mysql-server':
  ensure => installed,
}

file { '/etc/mysql/mysql.cnf':
  source => '/vagrant/examples/files/mysql.cnf',
  notify => Service['mysql'],
}

service { 'mysql':
  ensure => running,
  enable => true,
}
