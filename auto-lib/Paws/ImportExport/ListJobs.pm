
package Paws::ImportExport::ListJobs;
  use Moose;
  has APIVersion => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxJobs => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListJobs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImportExport::ListJobsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListJobsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImportExport::ListJobs - Arguments for method ListJobs on L<Paws::ImportExport>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListJobs on the 
L<AWS ImportE<sol>Export|Paws::ImportExport> service. Use the attributes of this class
as arguments to method ListJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListJobs.

As an example:

  $service_obj->ListJobs(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>
=head1 ATTRIBUTES


=head2 APIVersion => Str





=head2 Marker => Str





=head2 MaxJobs => Int






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListJobs in L<Paws::ImportExport>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

