
package Paws::DirectConnect::DescribeDirectConnectGatewayAssociationsResult;
  use Moose;
  has DirectConnectGatewayAssociations => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::DirectConnectGatewayAssociation]', traits => ['NameInRequest'], request_name => 'directConnectGatewayAssociations' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DescribeDirectConnectGatewayAssociationsResult

=head1 ATTRIBUTES


=head2 DirectConnectGatewayAssociations => ArrayRef[L<Paws::DirectConnect::DirectConnectGatewayAssociation>]

Information about the direct connect gateway associations.


=head2 NextToken => Str




=head2 _request_id => Str


=cut

1;