file { '/usr/local/bin/backup':
  content => epp('backup.sh.epp'),
  mode    => '0755',
}
