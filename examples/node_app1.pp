node 'app1' {
  file { '/tmp/only_on_app1':
    content => "I'm only needed on the server named 'app1'!",
  }
}
