
package Paws::GameLift::DescribeInstances;
  use Moose;
  has FleetId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::DescribeInstancesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeInstances - Arguments for method DescribeInstances on Paws::GameLift

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeInstances on the 
Amazon GameLift service. Use the attributes of this class
as arguments to method DescribeInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeInstances.

As an example:

  $service_obj->DescribeInstances(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> FleetId => Str

Unique identifier for a fleet. Specify the fleet to retrieve instance
information for.



=head2 InstanceId => Str

Unique identifier for an instance. Specify an instance to retrieve
information for or leave blank to get information on all instances in
the fleet.



=head2 Limit => Int

Maximum number of results to return. Use this parameter with
C<NextToken> to get results as a set of sequential pages.



=head2 NextToken => Str

Token indicating the start of the next sequential page of results. Use
the token that is returned with a previous call to this action. To
specify the start of the result set, do not specify a value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeInstances in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
