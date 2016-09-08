package { 'openssh-server':
  ensure => installed,
}

file { '/etc/ssh/sshd_config':
  source => '/vagrant/examples/files/sshd_config',
  notify => Service['sshd'],
}

service { 'sshd':
  ensure => running,
  enable => true,
}
