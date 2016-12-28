docker::run { 'volume_test':
  image   => 'library/alpine',
  volumes => ['pbg-volume:/mnt/volume'],
  command => '/bin/sh -c "echo Hello from inside a Docker volume >/mnt/volume/index.html"',
}
