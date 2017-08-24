file { '/usr/local/bin/backup':
  content => epp('/examples/backup.sh.epp',
    {
      'data_dir' => '/examples',
      }
  ), 
  mode    => '0755',
}
