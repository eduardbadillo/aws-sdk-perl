
package Paws::MediaLive::CreateInput;
  use Moose;
  has Destinations => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::InputDestinationRequest]', traits => ['NameInRequest'], request_name => 'destinations');
  has InputSecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'inputSecurityGroups');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId');
  has Sources => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::InputSourceRequest]', traits => ['NameInRequest'], request_name => 'sources');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInput');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prod/inputs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaLive::CreateInputResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::CreateInput - Arguments for method CreateInput on L<Paws::MediaLive>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateInput on the 
L<AWS Elemental MediaLive|Paws::MediaLive> service. Use the attributes of this class
as arguments to method CreateInput.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateInput.

As an example:

  $service_obj->CreateInput(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medialive/CreateInput>
=head1 ATTRIBUTES


=head2 Destinations => ArrayRef[L<Paws::MediaLive::InputDestinationRequest>]

Destination settings for PUSH type inputs.



=head2 InputSecurityGroups => ArrayRef[Str|Undef]

A list of security groups referenced by IDs to attach to the input.



=head2 Name => Str

Name of the input.



=head2 RequestId => Str

Unique identifier of the request to ensure the request is handled
exactly once in case of retries.



=head2 Sources => ArrayRef[L<Paws::MediaLive::InputSourceRequest>]

The source URLs for a PULL-type input. Every PULL type input needs
exactly two source URLs for redundancy. Only specify sources for PULL
type Inputs. Leave Destinations empty.



=head2 Type => Str



Valid values are: C<"UDP_PUSH">, C<"RTP_PUSH">, C<"RTMP_PUSH">, C<"RTMP_PULL">, C<"URL_PULL">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateInput in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

