# Manage NTP
class ntp (
  String $version = 'installed',
) {
  ensure_packages(['ntp'],
    {
      'ensure' => $version,
    }
  )
}

class { 'ntp':
  version => 'latest',
}
