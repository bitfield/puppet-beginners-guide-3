file_line { 'adjust ulimits':
  path  => '/etc/security/limits.conf',
  line  => 'www-data         -       nofile          9999',
  match => '^www-data .* nofile',
}
