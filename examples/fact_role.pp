case $facts['role'] {
  'web': {
    notice('This is a webserver!')
  }
  'db': {
    notice('This is the database server')
  }
  default: {
    notice("I don't recognise that role")
  }
}
