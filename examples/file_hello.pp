file { '/tmp/hello.txt':
  ensure  => file,
  content => "hello, world\n",
}
