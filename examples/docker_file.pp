file { '/tmp/Dockerfile.nginx':
  source => '/vagrant/examples/Dockerfile.nginx',
}

docker::image { 'pbg-nginx':
  docker_file => '/tmp/Dockerfile.nginx',
}

docker::run { 'pbg-nginx':
  image   => 'pbg-nginx',
  ports   => ['80:80'],
  restart => 'always',
}
