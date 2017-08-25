file { '/tmp/Dockerfile.nginx':
  content => epp('/examples/Dockerfile.website.epp',
    {
      'git_url' => 'https://github.com/bitfield/pbg-website.git'
    }
  ),
  notify  => Docker::Image['pbg-nginx'],
}

docker::image { 'pbg-nginx':
  docker_file => '/tmp/Dockerfile.nginx',
  ensure      => latest,
  notify      => Docker::Run['pbg-nginx'],
}

docker::run { 'pbg-nginx':
  image         => 'pbg-nginx:latest',
  ports         => ['80:80'],
  pull_on_start => true,
}
