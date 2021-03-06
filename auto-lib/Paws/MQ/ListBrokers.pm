
package Paws::MQ::ListBrokers;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBrokers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/brokers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MQ::ListBrokersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::ListBrokers - Arguments for method ListBrokers on L<Paws::MQ>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListBrokers on the
L<AmazonMQ|Paws::MQ> service. Use the attributes of this class
as arguments to method ListBrokers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListBrokers.

=head1 SYNOPSIS

    my $mq = Paws->service('MQ');
    my $ListBrokersResponse = $mq->ListBrokers(
      MaxResults => 1,               # OPTIONAL
      NextToken  => 'My__string',    # OPTIONAL
    );

    # Results:
    my $BrokerSummaries = $ListBrokersResponse->BrokerSummaries;
    my $NextToken       = $ListBrokersResponse->NextToken;

    # Returns a L<Paws::MQ::ListBrokersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/amazon-mq/>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of brokers that Amazon MQ can return per page (20 by
default). This value must be an integer from 5 to 100.



=head2 NextToken => Str

The token that specifies the next page of results Amazon MQ should
return. To request the first page, leave nextToken empty.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListBrokers in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

