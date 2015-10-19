package Paws::RedShift::VpcSecurityGroupMembership;
  use Moose;
  has Status => (is => 'ro', isa => 'Str');
  has VpcSecurityGroupId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::VpcSecurityGroupMembership

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::VpcSecurityGroupMembership object:

  $service_obj->Method(Att1 => { Status => $value, ..., VpcSecurityGroupId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::VpcSecurityGroupMembership object:

  $result = $service_obj->Method(...);
  $result->Att1->Status

=head1 DESCRIPTION

Describes the members of a VPC security group.

=head1 ATTRIBUTES

=head2 Status => Str

  

=head2 VpcSecurityGroupId => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

