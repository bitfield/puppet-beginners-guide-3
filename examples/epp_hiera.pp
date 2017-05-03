file { '/tmp/sshd_config_example':
  content => epp('/vagrant/examples/template_hiera_params.epp',
    {
      'users' => lookup('users'),
    }
  ),
}
