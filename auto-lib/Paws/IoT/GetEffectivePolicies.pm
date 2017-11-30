
package Paws::IoT::GetEffectivePolicies;
  use Moose;
  has CognitoIdentityPoolId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cognitoIdentityPoolId');
  has Principal => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'principal');
  has ThingName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'thingName');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEffectivePolicies');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/effective-policies');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::GetEffectivePoliciesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetEffectivePolicies - Arguments for method GetEffectivePolicies on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEffectivePolicies on the 
AWS IoT service. Use the attributes of this class
as arguments to method GetEffectivePolicies.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEffectivePolicies.

As an example:

  $service_obj->GetEffectivePolicies(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 CognitoIdentityPoolId => Str

The Cognito identity pool ID.



=head2 Principal => Str

The principal.



=head2 ThingName => Str

The thing name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEffectivePolicies in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
