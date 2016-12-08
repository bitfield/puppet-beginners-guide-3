docker::run { 'hello':
  image   => 'bitfield/hello',
  command => '/bin/sh -c "while true; do echo Hello, world; sleep 1; done"',
}
