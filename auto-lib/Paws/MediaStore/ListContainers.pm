
package Paws::MediaStore::ListContainers;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListContainers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaStore::ListContainersOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaStore::ListContainers - Arguments for method ListContainers on L<Paws::MediaStore>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListContainers on the 
L<AWS Elemental MediaStore|Paws::MediaStore> service. Use the attributes of this class
as arguments to method ListContainers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListContainers.

As an example:

  $service_obj->ListContainers(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediastore/ListContainers>
=head1 ATTRIBUTES


=head2 MaxResults => Int

Enter the maximum number of containers in the response. Use from 1 to
255 characters.



=head2 NextToken => Str

Only if you used C<MaxResults> in the first command, enter the token
(which was included in the previous response) to obtain the next set of
containers. This token is included in a response only if there actually
are more containers to list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListContainers in L<Paws::MediaStore>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

