
package Paws::SimpleWorkflow::Run {
  use Moose;
  has runId => (is => 'ro', isa => 'Str');

}

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::Run

=head1 ATTRIBUTES

=head2 runId => Str

  

The C<runId> of a workflow execution. This ID is generated by the
service and can be used to uniquely identify the workflow execution
within a domain.











=cut

1;