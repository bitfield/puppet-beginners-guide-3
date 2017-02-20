$apache_pkg = lookup('apache_pkg')

unless lookup('apparmor') {
  exec { 'apt-get -y remove apparmor': }
}

apache::vhost { lookup('domain'):
  servername => lookup('servername'),
  port       => lookup('port'),
  docroot    => lookup('docroot'),
}

bind::server::conf { '/etc/named.conf':
  listen_on_addr    => [ 'any' ],
  listen_on_v6_addr => [ 'any' ],
  forwarders        => [ '8.8.8.8', '8.8.4.4' ],
  allow_query       => lookup('dns_allow_query'),
}
