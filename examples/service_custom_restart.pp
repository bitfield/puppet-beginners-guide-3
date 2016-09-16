service { 'ntp':
  ensure  => running,
  enable  => true,
  restart => '/bin/echo Restarting >>/tmp/debug.log && systemctl restart ntp',
}
