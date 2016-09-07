file { hiera('backup_path'):
  ensure => directory,
}
