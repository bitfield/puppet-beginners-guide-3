package { 'docker-engine':
  provider => dpkg,
  source   => 'http://apt.dockerproject.org/repo/pool/main/d/docker-engine/docker-engine_1.11.0-0~xenial_amd64.deb',
}
