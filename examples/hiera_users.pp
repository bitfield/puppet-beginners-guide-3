hiera('users').each | String $username | {
  user { $username:
    ensure => present,
  }
}
