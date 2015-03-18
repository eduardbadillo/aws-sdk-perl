
package Paws::DataPipeline::RemoveTags {
  use Moose;
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);
  has tagKeys => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveTags');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataPipeline::RemoveTagsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::RemoveTags - Arguments for method RemoveTags on Paws::DataPipeline

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveTags on the 
AWS Data Pipeline service. Use the attributes of this class
as arguments to method RemoveTags.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to RemoveTags.

As an example:

  $service_obj->RemoveTags(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> pipelineId => Str

  

The pipeline from which you want to remove tags.










=head2 B<REQUIRED> tagKeys => ArrayRef[Str]

  

The keys of the tags you wish to remove.












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for RemoveTags in Paws::DataPipeline

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
