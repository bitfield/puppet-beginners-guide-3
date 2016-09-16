service { 'ntp':
  ensure     => running,
  enable     => true,
  hasrestart => true,
}
