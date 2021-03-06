
package Paws::CognitoIdp::ListUserImportJobs;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', required => 1);
  has PaginationToken => (is => 'ro', isa => 'Str');
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListUserImportJobs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::ListUserImportJobsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ListUserImportJobs - Arguments for method ListUserImportJobs on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListUserImportJobs on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method ListUserImportJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListUserImportJobs.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $ListUserImportJobsResponse = $cognito -idp->ListUserImportJobs(
      MaxResults      => 1,
      UserPoolId      => 'MyUserPoolIdType',
      PaginationToken => 'MyPaginationKeyType',    # OPTIONAL
    );

    # Results:
    my $PaginationToken = $ListUserImportJobsResponse->PaginationToken;
    my $UserImportJobs  = $ListUserImportJobsResponse->UserImportJobs;

    # Returns a L<Paws::CognitoIdp::ListUserImportJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/ListUserImportJobs>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MaxResults => Int

The maximum number of import jobs you want the request to return.



=head2 PaginationToken => Str

An identifier that was returned from the previous call to
C<ListUserImportJobs>, which can be used to return the next set of
import jobs in the list.



=head2 B<REQUIRED> UserPoolId => Str

The user pool ID for the user pool that the users are being imported
into.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListUserImportJobs in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

