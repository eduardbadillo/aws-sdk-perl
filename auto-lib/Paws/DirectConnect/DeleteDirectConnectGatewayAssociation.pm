
package Paws::DirectConnect::DeleteDirectConnectGatewayAssociation;
  use Moose;
  has DirectConnectGatewayId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'directConnectGatewayId' , required => 1);
  has VirtualGatewayId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'virtualGatewayId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDirectConnectGatewayAssociation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectConnect::DeleteDirectConnectGatewayAssociationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DeleteDirectConnectGatewayAssociation - Arguments for method DeleteDirectConnectGatewayAssociation on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDirectConnectGatewayAssociation on the
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method DeleteDirectConnectGatewayAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDirectConnectGatewayAssociation.

=head1 SYNOPSIS

    my $directconnect = Paws->service('DirectConnect');
    my $DeleteDirectConnectGatewayAssociationResult =
      $directconnect->DeleteDirectConnectGatewayAssociation(
      DirectConnectGatewayId => 'MyDirectConnectGatewayId',
      VirtualGatewayId       => 'MyVirtualGatewayId',

      );

    # Results:
    my $DirectConnectGatewayAssociation =
      $DeleteDirectConnectGatewayAssociationResult
      ->DirectConnectGatewayAssociation;

# Returns a L<Paws::DirectConnect::DeleteDirectConnectGatewayAssociationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect/DeleteDirectConnectGatewayAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectConnectGatewayId => Str

The ID of the direct connect gateway.

Example: "abcd1234-dcba-5678-be23-cdef9876ab45"

Default: None



=head2 B<REQUIRED> VirtualGatewayId => Str

The ID of the virtual private gateway.

Example: "vgw-abc123ef"

Default: None




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDirectConnectGatewayAssociation in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

