package Paws::CloudFormation::RollbackConfiguration;
  use Moose;
  has MonitoringTimeInMinutes => (is => 'ro', isa => 'Int');
  has RollbackTriggers => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::RollbackTrigger]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::RollbackConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFormation::RollbackConfiguration object:

  $service_obj->Method(Att1 => { MonitoringTimeInMinutes => $value, ..., RollbackTriggers => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFormation::RollbackConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->MonitoringTimeInMinutes

=head1 DESCRIPTION

Structure containing the rollback triggers for AWS CloudFormation to
monitor during stack creation and updating operations, and for the
specified monitoring period afterwards.

Rollback triggers enable you to have AWS CloudFormation monitor the
state of your application during stack creation and updating, and to
roll back that operation if the application breaches the threshold of
any of the alarms you've specified. For each rollback trigger you
create, you specify the Cloudwatch alarm that CloudFormation should
monitor. CloudFormation monitors the specified alarms during the stack
create or update operation, and for the specified amount of time after
all resources have been deployed. If any of the alarms goes to ALERT
state during the stack operation or the monitoring period,
CloudFormation rolls back the entire stack operation. If the monitoring
period expires without any alarms going to ALERT state, CloudFormation
proceeds to dispose of old resources as usual.

By default, CloudFormation only rolls back stack operations if an alarm
goes to ALERT state, not INSUFFICIENT_DATA state. To have
CloudFormation roll back the stack operation if an alarm goes to
INSUFFICIENT_DATA state as well, edit the CloudWatch alarm to treat
missing data as C<breaching>. For more information, see Configuring How
CloudWatch Alarms Treats Missing Data
(http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html).

AWS CloudFormation does not monitor rollback triggers when it rolls
back a stack during an update operation.

=head1 ATTRIBUTES


=head2 MonitoringTimeInMinutes => Int

  The amount of time, in minutes, during which CloudFormation should
monitor all the rollback triggers after the stack creation or update
operation deploys all necessary resources. If any of the alarms goes to
ALERT state during the stack operation or this monitoring period,
CloudFormation rolls back the entire stack operation. Then, for update
operations, if the monitoring period expires without any alarms going
to ALERT state CloudFormation proceeds to dispose of old resources as
usual.

If you specify a monitoring period but do not specify any rollback
triggers, CloudFormation still waits the specified period of time
before cleaning up old resources for update operations. You can use
this monitoring period to perform any manual stack validation desired,
and manually cancel the stack creation or update (using
CancelUpdateStack
(http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_CancelUpdateStack.html),
for example) as necessary.

If you specify 0 for this parameter, CloudFormation still monitors the
specified rollback triggers during stack creation and update
operations. Then, for update operations, it begins disposing of old
resources immediately once the operation completes.


=head2 RollbackTriggers => ArrayRef[L<Paws::CloudFormation::RollbackTrigger>]

  The triggers to monitor during stack creation or update actions.

By default, AWS CloudFormation saves the rollback triggers specified
for a stack and applies them to any subsequent update operations for
the stack, unless you specify otherwise. If you do specify rollback
triggers for this parameter, those triggers replace any list of
triggers previously specified for the stack. This means:

=over

=item *

If you don't specify this parameter, AWS CloudFormation uses the
rollback triggers previously specified for this stack, if any.

=item *

If you specify any rollback triggers using this parameter, you must
specify all the triggers that you want used for this stack, even
triggers you've specifed before (for example, when creating the stack
or during a previous stack update). Any triggers that you don't include
in the updated list of triggers are no longer applied to the stack.

=item *

If you specify an empty list, AWS CloudFormation removes all currently
specified triggers.

=back

If a specified Cloudwatch alarm is missing, the entire stack operation
fails and is rolled back.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
