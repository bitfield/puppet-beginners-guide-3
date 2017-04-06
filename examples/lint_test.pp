file { '/tmp/lint.txt':
  ensure => file,
  content => "puppet-lint is your friend\n",
}
