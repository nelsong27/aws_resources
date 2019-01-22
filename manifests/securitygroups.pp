# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include aws_resources::securitygroups
class aws_resources::securitygroups {
ec2_securitygroup { 'ng':
  ensure      => 'present',
  description => 'NG Security Group',
  id          => 'sg-d504989d',
  ingress     => [
  {
    'protocol'  => 'tcp',
    'from_port' => 22,
    'to_port'   => 22,
    'cidr'      => '0.0.0.0/0'
  },
  {
    'protocol'  => 'icmp',
    'from_port' => -1,
    'to_port'   => -1,
    'cidr'      => '0.0.0.0/0'
  }],
  region      => 'us-east-1',
  vpc         => 'default-vpc',
}
}
