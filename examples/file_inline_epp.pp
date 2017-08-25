$web_root = '/var/www'
$backup_dir = '/backup/www'

file { '/usr/local/bin/backup':
  content => inline_epp('rsync -a <%= $web_root %>/ <%= $backup_dir %>/'),
  mode    => '0755',
}
