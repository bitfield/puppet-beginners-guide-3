class { 'ntp2':
  start_at_boot => true,
  version       => 'installed',
  service_state => 'running',
}
