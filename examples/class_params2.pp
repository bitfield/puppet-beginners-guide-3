# Manage NTP
class pbg_ntp_params2 (
  Boolean $start_at_boot,
  String[1] $version                        = 'installed',
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

include pbg_ntp_params2
