docker::run { 'hello':
  ensure => absent,
  image  => 'bitfield/hello',
}
