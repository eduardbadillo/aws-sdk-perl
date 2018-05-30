
package Paws::GuardDuty::DeleteThreatIntelSet;
  use Moose;
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'detectorId', required => 1);
  has ThreatIntelSetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'threatIntelSetId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteThreatIntelSet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector/{detectorId}/threatintelset/{threatIntelSetId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::DeleteThreatIntelSetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::DeleteThreatIntelSet - Arguments for method DeleteThreatIntelSet on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteThreatIntelSet on the 
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method DeleteThreatIntelSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteThreatIntelSet.

As an example:

  $service_obj->DeleteThreatIntelSet(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>
=head1 ATTRIBUTES


=head2 B<REQUIRED> DetectorId => Str

The detectorID that specifies the GuardDuty service whose
ThreatIntelSet you want to delete.



=head2 B<REQUIRED> ThreatIntelSetId => Str

The unique ID that specifies the ThreatIntelSet that you want to
delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteThreatIntelSet in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

