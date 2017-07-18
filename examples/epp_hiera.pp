file { '/tmp/sshd_config_example':
  content => epp('/examples/template_hiera_params.epp',
    {
      'users' => lookup('users'),
    }
  ),
}
