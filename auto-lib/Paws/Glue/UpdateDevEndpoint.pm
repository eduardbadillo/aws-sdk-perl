
package Paws::Glue::UpdateDevEndpoint;
  use Moose;
  has CustomLibraries => (is => 'ro', isa => 'Paws::Glue::DevEndpointCustomLibraries');
  has EndpointName => (is => 'ro', isa => 'Str', required => 1);
  has PublicKey => (is => 'ro', isa => 'Str');
  has UpdateEtlLibraries => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDevEndpoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::UpdateDevEndpointResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::UpdateDevEndpoint - Arguments for method UpdateDevEndpoint on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDevEndpoint on the 
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method UpdateDevEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDevEndpoint.

As an example:

  $service_obj->UpdateDevEndpoint(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/UpdateDevEndpoint>
=head1 ATTRIBUTES


=head2 CustomLibraries => L<Paws::Glue::DevEndpointCustomLibraries>

Custom Python or Java libraries to be loaded in the DevEndpoint.



=head2 B<REQUIRED> EndpointName => Str

The name of the DevEndpoint to be updated.



=head2 PublicKey => Str

The public key for the DevEndpoint to use.



=head2 UpdateEtlLibraries => Bool

True if the list of custom libraries to be loaded in the development
endpoint needs to be updated, or False otherwise.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDevEndpoint in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

