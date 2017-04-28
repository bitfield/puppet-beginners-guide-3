$apache_pkg = lookup('apache_pkg')

unless lookup('apparmor_enabled') {
  exec { 'apt-get -y remove apparmor': }
}

notice('dns_allow_query enabled: ', lookup('dns_allow_query'))
