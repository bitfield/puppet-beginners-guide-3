docker::run { 'volume_test2':
  image   => 'nginx:alpine',
  volumes => ['pbg-volume:/usr/share/nginx/html'],
  ports   => ['80:80'],
}
