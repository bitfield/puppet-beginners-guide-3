# Manage NTP
class ntp (String $version = 'installed') {
  ensure_packages(['ntp'],
    { 'ensure' => $version })
}

class { 'ntp':
  version => '1:4.2.8p4+dfsg-3ubuntu5',
}
