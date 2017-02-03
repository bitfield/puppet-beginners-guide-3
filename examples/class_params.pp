# Manage NTP
class ntp (
  Boolean $start_at_boot,
  String[1] $version = 'installed',
  Enum['running', 'stopped'] $service_state = 'running',
) {
  ensure_packages(['ntp'],
    { 'ensure' => $version })

  service { 'ntp':
    ensure => $service_state,
    enable => $start_at_boot,
  }
}

class { 'ntp':
  start_at_boot => true,
  service_state => 'running',
}
