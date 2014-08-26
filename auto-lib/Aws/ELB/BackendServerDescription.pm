package Aws::ELB::BackendServerDescription {
  use Moose;
  with ('AWS::API::ResultParser');
  has InstancePort => (is => 'ro', isa => 'Int');
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str]');
}
1