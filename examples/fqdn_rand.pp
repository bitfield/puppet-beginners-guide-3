cron { 'run daily backup':
  command => '/usr/local/bin/backup',
  minute  => '0',
  hour    => fqdn_rand(24, 'run daily backup'),
}

cron { 'run daily backup sync':
  command => '/usr/local/bin/backup_sync',
  minute  => '0',
  hour    => fqdn_rand(24, 'run daily backup sync'),
}
