$ami = 'YOUR_AMI_ID'
$region = 'us-east-1'

ec2_vpc { 'pbg-vpc':
  ensure     => present,
  region     => $region,
  cidr_block => '10.0.0.0/16',
}

ec2_vpc_subnet { 'pbg-subnet':
  vpc               => 'pbg-vpc',
  region            => $region,
  cidr_block        => '10.0.0.0/24',
  availability_zone => "${region}a",
}

ec2_securitygroup { 'pbg-sg':
  description => 'PBG security group',
  region      => $region,
  vpc         => 'pbg-vpc',
}

ec2_instance { 'pbg-demo':
  ensure          => present,
  region          => $region,
  subnet          => 'pbg-subnet',
  security_groups => 'pbg-sg',
  image_id        => $ami,
  instance_type   => 't1.micro',
}
