service { 'ntp':
  ensure    => running,
  enable    => true,
  hasstatus => false,
}
