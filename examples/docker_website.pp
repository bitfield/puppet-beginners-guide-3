file { '/usr/local/bin/stop_and_remove_image':
  source => '/vagrant/examples/stop_and_remove_image.sh',
  mode   => '0755',
}

file { '/tmp/Dockerfile.nginx':
  content => epp('/vagrant/examples/Dockerfile.website.epp',
    {
      'git_url' => 'https://github.com/bitfield/pbg-website.git'
    }
  ),
  notify  => Exec['refresh-pbg-nginx'],
}

exec { 'refresh-pbg-nginx':
  command     => '/usr/local/bin/stop_and_remove_image pbg-nginx',
  refreshonly => true,
  notify      => Docker::Image['pbg-nginx'],
}

docker::image { 'pbg-nginx':
  docker_file => '/tmp/Dockerfile.nginx',
  notify      => Docker::Run['pbg-nginx'],
}

docker::run { 'pbg-nginx':
  image   => 'pbg-nginx',
  ports   => ['80:80'],
  restart => 'always',
}
