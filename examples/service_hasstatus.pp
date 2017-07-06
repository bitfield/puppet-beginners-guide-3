package { 'ntp':
  ensure => installed,
}

service { 'ntp':
  ensure    => running,
  enable    => true,
  hasstatus => false,
}
