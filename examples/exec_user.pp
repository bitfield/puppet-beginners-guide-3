exec { 'say-hello':
  command => '/bin/echo Hello, this is `whoami` >/tmp/hello-vagrant.txt',
  user    => 'vagrant',
  creates => '/tmp/hello-vagrant.txt',
}
