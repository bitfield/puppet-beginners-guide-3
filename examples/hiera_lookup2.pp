$apache_pkg = hiera('apache_pkg')

unless hiera('apparmor') {
  exec { 'apt-get -y remove apparmor': }
}

apache::vhost { hiera('domain'):
  servername => hiera('servername'),
  port       => hiera('port')
  docroot    => hiera('docroot'),
}

bind::server::conf { '/etc/named.conf':
  listen_on_addr    => [ 'any' ],
  listen_on_v6_addr => [ 'any' ],
  forwarders        => [ '8.8.8.8', '8.8.4.4' ],
  allow_query       => hiera('dns_allow_query'),
}
