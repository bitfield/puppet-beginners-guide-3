file { '/usr/local/bin/task1':
  content => "echo I am task1\n",
  mode    => '0755',
}

file { '/usr/local/bin/task2':
  content => "echo I am task2\n",
  mode    => '0755',
}

file { '/usr/local/bin/task3':
  content => "echo I am task3\n",
  mode    => '0755',
}
