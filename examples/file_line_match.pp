file_line { 'set root email alias':
  path  => '/etc/aliases',
  line  => 'root: john@bitfieldconsulting.com',
  match => '^root: ',
}
