range(1,20).each | $instance | {
  docker::run { "hello-${instance}":
    image   => 'bitfield/hello',
    command => '/bin/sh -c "while true; do echo Hello, world; sleep 1; done"',
  }
}
