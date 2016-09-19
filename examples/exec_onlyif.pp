exec { 'process-incoming-cat-pictures':
  command => '/usr/local/bin/cat-picture-generator --import /tmp/incoming/*',
  onlyif  => '/bin/ls /tmp/incoming/*',
}
