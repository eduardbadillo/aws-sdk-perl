package Paws::Config::RecordingGroup;
  use Moose;
  has AllSupported => (is => 'ro', isa => 'Bool', xmlname => 'allSupported', request_name => 'allSupported', traits => ['Unwrapped','NameInRequest']);
  has ResourceTypes => (is => 'ro', isa => 'ArrayRef[Str]', xmlname => 'resourceTypes', request_name => 'resourceTypes', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::RecordingGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::RecordingGroup object:

  $service_obj->Method(Att1 => { AllSupported => $value, ..., ResourceTypes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::RecordingGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->AllSupported

=head1 DESCRIPTION

The group of AWS resource types that AWS Config records when starting
the configuration recorder.

B<recordingGroup> can have one and only one parameter. Choose either
B<allSupported> or B<resourceTypes>.

=head1 ATTRIBUTES

=head2 AllSupported => Bool

  Records all supported resource types in the recording group. For a list
of supported resource types, see Supported resource types. If you
specify B<allSupported>, you cannot enumerate a list of
B<resourceTypes>.

=head2 ResourceTypes => ArrayRef[Str]

  A comma-separated list of strings representing valid AWS resource types
(for example, C<AWS::EC2::Instance> or C<AWS::CloudTrail::Trail>).
B<resourceTypes> is only valid if you have chosen not to select
B<allSupported>. For a list of valid B<resourceTypes> values, see the
B<resourceType Value> column in the following topic: Supported AWS
Resource Types.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

