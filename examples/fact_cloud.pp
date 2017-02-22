case $facts['cloud'] {
  'aws': {
    notice('This is an AWS cloud server ')
  }
  'gcp': {
    notice('This is a Google cloud server')
  }
  default: {
    notice("I'm not sure which cloud I'm in!")
  }
}
