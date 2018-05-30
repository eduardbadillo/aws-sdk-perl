
package Paws::Glacier::ListProvisionedCapacity;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'accountId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListProvisionedCapacity');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{accountId}/provisioned-capacity');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glacier::ListProvisionedCapacityOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::ListProvisionedCapacity - Arguments for method ListProvisionedCapacity on L<Paws::Glacier>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListProvisionedCapacity on the 
L<Amazon Glacier|Paws::Glacier> service. Use the attributes of this class
as arguments to method ListProvisionedCapacity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListProvisionedCapacity.

As an example:

  $service_obj->ListProvisionedCapacity(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/glacier/>
=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The AWS account ID of the account that owns the vault. You can either
specify an AWS account ID or optionally a single '-' (hyphen), in which
case Amazon Glacier uses the AWS account ID associated with the
credentials used to sign the request. If you use an account ID, don't
include any hyphens ('-') in the ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListProvisionedCapacity in L<Paws::Glacier>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

