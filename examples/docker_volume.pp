docker::run { 'volume_test':
  image   => 'library/alpine:3.6',
  volumes => ['pbg-volume:/mnt/volume'],
  command => '/bin/sh -c "echo Hello from inside a Docker volume >/mnt/volume/index.html"',
}
