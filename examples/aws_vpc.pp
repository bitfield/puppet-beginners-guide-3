$ami = 'ami-933105e8'
$region = 'us-east-1'

ec2_vpc { 'pbg-vpc':
  ensure     => present,
  region     => $region,
  cidr_block => '10.99.0.0/16',
}

ec2_vpc_internet_gateway { 'pbg-igw':
  ensure => present,
  region => $region,
  vpc    => 'pbg-vpc',
}

ec2_vpc_routetable { 'pbg-rt':
  ensure => present,
  region => $region,
  vpc    => 'pbg-vpc',
  routes => [
    {
      destination_cidr_block => '10.99.0.0/16',
      gateway                => 'local'
    },
    {
      destination_cidr_block => '0.0.0.0/0',
      gateway                => 'pbg-igw'
    },
  ],
}

ec2_vpc_subnet { 'pbg-vpc-subnet':
  ensure            => present,
  vpc               => 'pbg-vpc',
  region            => $region,
  cidr_block        => '10.99.0.0/24',
  availability_zone => "${region}a",
  route_table       => 'pbg-rt',
}

ec2_securitygroup { 'pbg-vpc-sg':
  ensure      => present,
  description => 'PBG security group',
  region      => $region,
  vpc         => 'pbg-vpc',
  ingress     => [
    {
      description => 'SSH access from world',
      protocol    => 'tcp',
      port        => 22,
      cidr        => '0.0.0.0/0',
    },
    {
      description => 'Ping access from world',
      protocol    => 'icmp',
      cidr        => '0.0.0.0/0',
    },
  ],
}

ec2_instance { 'pbg-vpc-demo':
  ensure                      => present,
  region                      => $region,
  subnet                      => 'pbg-vpc-subnet',
  security_groups             => 'pbg-vpc-sg',
  image_id                    => $ami,
  instance_type               => 't1.micro',
  associate_public_ip_address => true,
  key_name                    => 'pbg',
}
