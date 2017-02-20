lookup('users').each | String $username, Hash $attrs | {
  user { $username:
    * => $attrs,
  }
}
