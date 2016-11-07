# Manage NTP
class ntp (String $version = 'installed') {
  package { 'ntp':
    ensure => $version,
  }
}

class { 'ntp':
  version => '1:4.2.8p4+dfsg-3ubuntu5',
}
