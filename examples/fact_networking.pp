$my_hostname = $facts['networking']['hostname']
$my_fqdn = $facts['networking']['fqdn']
$my_ip = $facts['networking']['ip']
notice("My hostname is ${my_hostname}, my FQDN is ${my_fqdn}, and my IP is ${my_ip}")
