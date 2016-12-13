package { [ 'aws-sdk-core',
            'retries']:
  ensure   => installed,
  provider => puppet_gem,
}
