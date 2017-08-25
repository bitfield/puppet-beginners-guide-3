docker::run { 'mount_test':
  image   => 'library/alpine:3.6',
  volumes => ['/tmp/container_data:/mnt/data'],
  command => '/bin/sh -c "echo Hello, world >/mnt/data/hello.txt"',
}
