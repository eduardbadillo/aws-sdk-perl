package Paws::SimpleWorkflow::StartLambdaFunctionFailedEventAttributes;
  use Moose;
  has Cause => (is => 'ro', isa => 'Str', xmlname => 'cause', request_name => 'cause', traits => ['Unwrapped','NameInRequest']);
  has Message => (is => 'ro', isa => 'Str', xmlname => 'message', request_name => 'message', traits => ['Unwrapped','NameInRequest']);
  has ScheduledEventId => (is => 'ro', isa => 'Int', xmlname => 'scheduledEventId', request_name => 'scheduledEventId', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::StartLambdaFunctionFailedEventAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::StartLambdaFunctionFailedEventAttributes object:

  $service_obj->Method(Att1 => { Cause => $value, ..., ScheduledEventId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::StartLambdaFunctionFailedEventAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->Cause

=head1 DESCRIPTION

Provides details for the C<StartLambdaFunctionFailed> event.

=head1 ATTRIBUTES

=head2 Cause => Str

  The cause of the failure. This information is generated by the system
and can be useful for diagnostic purposes.

If B<cause> is set to OPERATION_NOT_PERMITTED, the decision failed
because it lacked sufficient permissions. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows.

=head2 Message => Str

  The error message (if any).

=head2 ScheduledEventId => Int

  The ID of the C<LambdaFunctionScheduled> event that was recorded when
this AWS Lambda function was scheduled. This information can be useful
for diagnosing problems by tracing back the chain of events leading up
to this event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

