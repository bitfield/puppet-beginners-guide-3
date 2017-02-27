$web_root = '/var/www/vhosts'
$backup_dir = '/backups'

file { '/usr/local/bin/backup':
  content => inline_epp('rsync -a <%= $web_root %>/ <%= $backup_dir %>/'),
  mode    => '0755',
}
