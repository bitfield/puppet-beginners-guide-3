$install_perl = true
if $install_perl {
  package { 'perl':
    ensure => installed,
  }
} else {
  package { 'perl':
    ensure => absent,
  }
}
