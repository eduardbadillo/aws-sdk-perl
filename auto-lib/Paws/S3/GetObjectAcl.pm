
package Paws::S3::GetObjectAcl {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has VersionId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetObjectAcl');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::GetObjectAclOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetObjectAclResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetObjectAclOutput

=head1 ATTRIBUTES

=head2 B<REQUIRED> Bucket => Str

  
=head2 B<REQUIRED> Key => Str

  
=head2 VersionId => Str

  

VersionId used to reference a specific version of the object.











=cut
