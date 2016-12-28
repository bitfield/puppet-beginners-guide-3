docker::run { 'mount_test':
  image   => 'library/alpine',
  volumes => ['/tmp/container_data:/mnt/data'],
  command => '/bin/sh -c "echo Hello, world >/mnt/data/hello.txt"',
}
