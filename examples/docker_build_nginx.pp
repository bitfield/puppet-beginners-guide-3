file { '/tmp/Dockerfile.nginx':
  source => '/vagrant/examples/Dockerfile.nginx',
  notify => Docker::Image['pbg-nginx'],
}

docker::image { 'pbg-nginx':
  docker_file => '/tmp/Dockerfile.nginx',
  ensure      => latest,
}
