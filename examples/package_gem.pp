package { 'ruby':
  ensure => installed,
}

package { 'bundler':
  ensure   => installed,
  provider => gem,
}
