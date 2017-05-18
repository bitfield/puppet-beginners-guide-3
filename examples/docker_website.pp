file { '/tmp/Dockerfile.nginx':
  content => epp('/vagrant/examples/Dockerfile.website.epp',
    {
      'git_url' => 'https://github.com/bitfield/pbg-website.git'
    }
  ),
  notify  => Docker::Image['pbg-nginx'],
}

docker::image { 'pbg-nginx':
  docker_file => '/tmp/Dockerfile.nginx',
  ensure      => latest,
}
