# Install MySQL and set up an example database
class { '::mysql::server':
  root_password           => 'correct horse battery staple',
  remove_default_accounts => true,
}
