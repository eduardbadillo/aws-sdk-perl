
package Paws::S3::DeleteObjects {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has Delete => (is => 'ro', isa => 'Paws::S3::Delete', required => 1);
  has MFA => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteObjects');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::DeleteObjectsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteObjectsResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::DeleteObjectsOutput

=head1 ATTRIBUTES

=head2 B<REQUIRED> Bucket => Str

  
=head2 B<REQUIRED> Delete => Paws::S3::Delete

  
=head2 MFA => Str

  

The concatenation of the authentication device's serial number, a
space, and the value that is displayed on your authentication device.











=cut
