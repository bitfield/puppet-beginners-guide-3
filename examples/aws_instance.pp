$ami = 'YOUR_AMI_ID'
$region = 'us-east-1'

ec2_securitygroup { 'pbg-sg':
  ensure      =>  present,
  description => 'PBG security group',
  region      => $region,
  vpc         => 'default-vpc',
  ingress     => [{
    description => 'SSH access from world',
    protocol    => 'tcp',
    port        => 22,
    cidr        => '0.0.0.0/0',
  }],
}

ec2_instance { 'pbg-demo':
  ensure                      => present,
  region                      => $region,
  subnet                      => 'default-subnet',
  security_groups             => 'pbg-sg',
  image_id                    => $ami,
  instance_type               => 't1.micro',
  associate_public_ip_address => true,
  key_name                    => 'pbg',
}
