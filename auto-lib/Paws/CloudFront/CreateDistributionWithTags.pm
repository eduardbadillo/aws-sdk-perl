
package Paws::CloudFront::CreateDistributionWithTags;
  use Moose;
  has DistributionConfigWithTags => (is => 'ro', isa => 'Paws::CloudFront::DistributionConfigWithTags', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDistributionWithTags');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2016-09-07/distribution?WithTags');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::CreateDistributionWithTagsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateDistributionWithTags - Arguments for method CreateDistributionWithTags on Paws::CloudFront

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDistributionWithTags2016_09_07 on the 
Amazon CloudFront service. Use the attributes of this class
as arguments to method CreateDistributionWithTags2016_09_07.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDistributionWithTags2016_09_07.

As an example:

  $service_obj->CreateDistributionWithTags2016_09_07(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DistributionConfigWithTags => L<Paws::CloudFront::DistributionConfigWithTags>

The distribution's configuration information.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDistributionWithTags2016_09_07 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
