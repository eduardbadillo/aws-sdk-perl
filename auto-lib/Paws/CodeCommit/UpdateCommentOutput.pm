
package Paws::CodeCommit::UpdateCommentOutput;
  use Moose;
  has Comment => (is => 'ro', isa => 'Paws::CodeCommit::Comment', traits => ['NameInRequest'], request_name => 'comment' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::UpdateCommentOutput

=head1 ATTRIBUTES


=head2 Comment => L<Paws::CodeCommit::Comment>

Information about the updated comment.


=head2 _request_id => Str


=cut

1;