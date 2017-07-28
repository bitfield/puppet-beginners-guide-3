lookup('users', Array[String]).each | String $username | {
  user { $username:
    ensure => present,
  }
}
