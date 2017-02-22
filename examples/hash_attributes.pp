$attributes = {
  'owner' => 'vagrant',
  'group' => 'vagrant',
  'mode'  => '0644',
}

file { '/tmp/test':
  ensure => present,
  *      => $attributes,
}
