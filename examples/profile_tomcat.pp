# Site-specific Tomcat configuration
class profile::tomcat {
  tomcat::install { '/usr/share/tomcat7':
    install_from_source => false,
    package_ensure      => present,
    package_name        => ['libtomcat7-java','tomcat7-common','tomcat7'],
  }

  exec { 'reload-tomcat':
    command     => '/usr/sbin/service tomcat7 restart',
    refreshonly => true,
  }

  lookup('tomcat_allowed_ips', Array[String[7]]).each |String $source_ip| {
    firewall { "100 Tomcat access from ${source_ip}":
      proto  => 'tcp',
      dport  => '8080',
      source => $source_ip,
      action => 'accept',
    }
  }

  file { '/usr/share/tomcat7/logs':
    ensure  => directory,
    owner   => 'tomcat7',
    require => Tomcat::Install['/usr/share/tomcat7'],
  }

  file { '/etc/logrotate.d/tomcat7':
    source => 'puppet:///site-modules/profile/tomcat/tomcat7.logrotate',
  }
}
