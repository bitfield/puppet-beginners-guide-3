file { '/root/aws_credentials':
  content => epp('/examples/template_params.epp',
    {
      'aws_access_key' => 'AKIAIAF7V6N2PTOIZVA2',
      'aws_secret_key' => '7IBpXjoYRVbJ/rCTVLaAMyud+i4co11lVt1Df1vt',
    }
  ),
}
