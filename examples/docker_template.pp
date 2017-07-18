file { '/tmp/Dockerfile.nginx':
  content => epp('/examples/Dockerfile.nginx.epp',
    {
      'message' => 'Containers rule!'
    }
  ),
  notify => Docker::Image['pbg-nginx'],
}

docker::image { 'pbg-nginx':
  docker_file => '/tmp/Dockerfile.nginx',
  ensure      => latest,
}
