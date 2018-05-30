
package Paws::ApiGateway::GetRequestValidator;
  use Moose;
  has RequestValidatorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'requestValidatorId', required => 1);
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restApiId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRequestValidator');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/requestvalidators/{requestvalidator_id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::RequestValidator');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::GetRequestValidator - Arguments for method GetRequestValidator on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRequestValidator on the 
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method GetRequestValidator.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRequestValidator.

As an example:

  $service_obj->GetRequestValidator(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/apigateway/>
=head1 ATTRIBUTES


=head2 B<REQUIRED> RequestValidatorId => Str

[Required] The identifier of the RequestValidator to be retrieved.



=head2 B<REQUIRED> RestApiId => Str

[Required] The string identifier of the associated RestApi.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRequestValidator in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

