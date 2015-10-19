package Paws::StorageGateway::VolumeInfo;
  use Moose;
  has VolumeARN => (is => 'ro', isa => 'Str');
  has VolumeType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::VolumeInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StorageGateway::VolumeInfo object:

  $service_obj->Method(Att1 => { VolumeARN => $value, ..., VolumeType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StorageGateway::VolumeInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->VolumeARN

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES

=head2 VolumeARN => Str

  

=head2 VolumeType => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

