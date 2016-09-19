cron { 'cron example':
  command     => '/bin/date +%F',
  user        => 'vagrant',
  environment => ['MAILTO=john@bitfieldconsulting.com', 'PATH=/bin'],
  hour        => '0',
  minute      => '0',
  weekday     => ['Saturday', 'Sunday'],
}
