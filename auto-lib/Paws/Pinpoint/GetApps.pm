
package Paws::Pinpoint::GetApps;
  use Moose;
  has PageSize => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'page-size');
  has Token => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'token');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetApps');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apps');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::GetAppsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetApps - Arguments for method GetApps on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetApps on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method GetApps.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetApps.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $GetAppsResponse = $pinpoint->GetApps(
      PageSize => 'My__string',    # OPTIONAL
      Token    => 'My__string',    # OPTIONAL
    );

    # Results:
    my $ApplicationsResponse = $GetAppsResponse->ApplicationsResponse;

    # Returns a L<Paws::Pinpoint::GetAppsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 PageSize => Str





=head2 Token => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetApps in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

