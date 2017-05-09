# Manage NTP
class ntp2 (
  Boolean $start_at_boot,
  String[1] $version = 'installed',
  Enum['running', 'stopped'] $service_state = 'running',
) {
  ensure_packages(['ntp'],
    {
      'ensure' => $version,
    }
  )

  service { 'ntp':
    ensure => $service_state,
    enable => $start_at_boot,
  }
}

class { 'ntp2':
  start_at_boot => true,
  version       => latest,
  service_state => running,
}
