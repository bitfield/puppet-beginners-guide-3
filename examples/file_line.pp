file_line { 'set ulimits':
  path => '/etc/security/limits.conf',
  line => 'www-data         -       nofile          32768',
}
