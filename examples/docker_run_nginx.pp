docker::run { 'pbg-nginx':
  image         => 'pbg-nginx:latest',
  ports         => ['80:80'],
  pull_on_start => true,
}
