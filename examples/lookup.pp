file { lookup('backup_path', String):
  ensure => directory,
}
