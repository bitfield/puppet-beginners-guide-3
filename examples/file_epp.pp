file { '/usr/local/bin/backup':
  content => epp('site/backup.sh.epp'),
  mode    => '0755',
}
