
package Paws::SES::CreateReceiptRule;
  use Moose;
  has After => (is => 'ro', isa => 'Str');
  has Rule => (is => 'ro', isa => 'Paws::SES::ReceiptRule', required => 1);
  has RuleSetName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateReceiptRule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::CreateReceiptRuleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateReceiptRuleResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::CreateReceiptRule - Arguments for method CreateReceiptRule on Paws::SES

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateReceiptRule on the 
Amazon Simple Email Service service. Use the attributes of this class
as arguments to method CreateReceiptRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateReceiptRule.

As an example:

  $service_obj->CreateReceiptRule(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 After => Str

  The name of an existing rule after which the new rule will be placed.
If this parameter is null, the new rule will be inserted at the
beginning of the rule list.

=head2 B<REQUIRED> Rule => L<Paws::SES::ReceiptRule>

  A data structure that contains the specified rule's name, actions,
recipients, domains, enabled status, scan status, and TLS policy.

=head2 B<REQUIRED> RuleSetName => Str

  The name of the rule set to which to add the rule.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateReceiptRule in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

