docker::image { 'pbg-hello':
  docker_file => '/examples/Dockerfile.hello',
  ensure      => latest,
}
