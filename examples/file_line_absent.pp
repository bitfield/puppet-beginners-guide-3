file_line { 'remove csh from valid shells':
  ensure            => absent,
  path              => '/etc/shells',
  match             => '^/bin/csh',
  match_for_absence => true,
}
