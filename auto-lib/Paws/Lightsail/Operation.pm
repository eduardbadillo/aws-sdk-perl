package Paws::Lightsail::Operation;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', xmlname => 'createdAt', request_name => 'createdAt', traits => ['Unwrapped','NameInRequest']);
  has ErrorCode => (is => 'ro', isa => 'Str', xmlname => 'errorCode', request_name => 'errorCode', traits => ['Unwrapped','NameInRequest']);
  has ErrorDetails => (is => 'ro', isa => 'Str', xmlname => 'errorDetails', request_name => 'errorDetails', traits => ['Unwrapped','NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', xmlname => 'id', request_name => 'id', traits => ['Unwrapped','NameInRequest']);
  has IsTerminal => (is => 'ro', isa => 'Bool', xmlname => 'isTerminal', request_name => 'isTerminal', traits => ['Unwrapped','NameInRequest']);
  has Location => (is => 'ro', isa => 'Paws::Lightsail::ResourceLocation', xmlname => 'location', request_name => 'location', traits => ['Unwrapped','NameInRequest']);
  has OperationDetails => (is => 'ro', isa => 'Str', xmlname => 'operationDetails', request_name => 'operationDetails', traits => ['Unwrapped','NameInRequest']);
  has OperationType => (is => 'ro', isa => 'Str', xmlname => 'operationType', request_name => 'operationType', traits => ['Unwrapped','NameInRequest']);
  has ResourceName => (is => 'ro', isa => 'Str', xmlname => 'resourceName', request_name => 'resourceName', traits => ['Unwrapped','NameInRequest']);
  has ResourceType => (is => 'ro', isa => 'Str', xmlname => 'resourceType', request_name => 'resourceType', traits => ['Unwrapped','NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', xmlname => 'status', request_name => 'status', traits => ['Unwrapped','NameInRequest']);
  has StatusChangedAt => (is => 'ro', isa => 'Str', xmlname => 'statusChangedAt', request_name => 'statusChangedAt', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::Operation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::Operation object:

  $service_obj->Method(Att1 => { CreatedAt => $value, ..., StatusChangedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::Operation object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedAt

=head1 DESCRIPTION

Describes the API operation.

=head1 ATTRIBUTES


=head2 CreatedAt => Str

  The timestamp when the operation was initialized (e.g.,
C<1479816991.349>).


=head2 ErrorCode => Str

  The error code.


=head2 ErrorDetails => Str

  The error details.


=head2 Id => Str

  The ID of the operation.


=head2 IsTerminal => Bool

  A Boolean value indicating whether the operation is terminal.


=head2 Location => L<Paws::Lightsail::ResourceLocation>

  The region and Availability Zone.


=head2 OperationDetails => Str

  Details about the operation (e.g., C<Debian-1GB-Virginia-1>).


=head2 OperationType => Str

  The type of operation.


=head2 ResourceName => Str

  The resource name.


=head2 ResourceType => Str

  The resource type.


=head2 Status => Str

  The status of the operation.


=head2 StatusChangedAt => Str

  The timestamp when the status was changed (e.g., C<1479816991.349>).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
