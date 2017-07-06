exec { 'say-hello':
  command => '/bin/echo Hello, this is `whoami` >/tmp/hello-ubuntu.txt',
  user    => 'ubuntu',
  creates => '/tmp/hello-ubuntu.txt',
}
