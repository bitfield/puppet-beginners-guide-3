type ServiceState = Enum['running', 'stopped'] 

define myservice(ServiceState $state) {
  service { $name:
    ensure => $state,
  }
}

myservice { 'ntp':
  state => 'running',
}
