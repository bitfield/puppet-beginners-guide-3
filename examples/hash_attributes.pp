$attributes = {
  'owner' => 'ubuntu',
  'group' => 'ubuntu',
  'mode'  => '0644',
}

file { '/tmp/test':
  ensure => present,
  *      => $attributes,
}
