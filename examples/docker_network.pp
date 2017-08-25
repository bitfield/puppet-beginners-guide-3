docker_network { 'pbg-net':
  ensure => present,
}

docker::run { 'pbg-redis':
  image => 'redis:4.0.1-alpine',
  net   => 'pbg-net',
}

docker::image { 'pbg-demo':
  docker_file => '/examples/Dockerfile.pbg-demo',
  ensure      => latest,
}

docker::run { 'pbg-demo':
  image   => 'pbg-demo:latest',
  net     => 'pbg-net',
  command => '/bin/sh -c "redis-cli -h pbg-redis set message \"Hello, world\""',
}
