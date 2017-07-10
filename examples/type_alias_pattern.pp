type IPAddress = Pattern[/\A([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])(\.([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])){3}\z/]

define socket_server(
  IPAddress $listen_address,
  IPAddress $public_address,
) {
  # ...
}

socket_server { 'myserver':
  listen_address => '0.0.0.0',
  public_address => $facts['networking']['ip'],
}
