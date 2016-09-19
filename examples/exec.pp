exec { 'install-cat-picture-generator':
  cwd     => '/tmp/cat-picture-generator',
  command => '/tmp/cat-picture/generator/configure && /usr/bin/make install',
  creates => '/usr/local/bin/cat-picture-generator',
}
