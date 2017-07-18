lookup('users2').each | String $username, Hash $attrs | {
  user { $username:
    * => $attrs,
  }
}
