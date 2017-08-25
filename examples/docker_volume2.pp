docker::run { 'volume_test2':
  image   => 'nginx:1.13.3-alpine',
  volumes => ['pbg-volume:/usr/share/nginx/html'],
  ports   => ['80:80'],
}
