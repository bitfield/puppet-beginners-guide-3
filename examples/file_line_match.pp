file_line { 'set root email alias':
  path  => '/etc/aliases',
  line  => 'root: admin@example.com',
  match => '^root: ',
}
