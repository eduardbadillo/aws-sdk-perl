
package Paws::MachineLearning::Predict;
  use Moose;
  has MLModelId => (is => 'ro', isa => 'Str', required => 1);
  has PredictEndpoint => (is => 'ro', isa => 'Str', required => 1);
  has Record => (is => 'ro', isa => 'Paws::MachineLearning::Record', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Predict');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MachineLearning::PredictOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning::Predict - Arguments for method Predict on L<Paws::MachineLearning>

=head1 DESCRIPTION

This class represents the parameters used for calling the method Predict on the
L<Amazon Machine Learning|Paws::MachineLearning> service. Use the attributes of this class
as arguments to method Predict.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Predict.

=head1 SYNOPSIS

    my $machinelearning = Paws->service('MachineLearning');
    my $PredictOutput = $machinelearning->Predict(
      MLModelId       => 'MyEntityId',
      PredictEndpoint => 'MyVipURL',
      Record          => { 'MyVariableName' => 'MyVariableValue', },

    );

    # Results:
    my $Prediction = $PredictOutput->Prediction;

    # Returns a L<Paws::MachineLearning::PredictOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/machinelearning/Predict>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MLModelId => Str

A unique identifier of the C<MLModel>.



=head2 B<REQUIRED> PredictEndpoint => Str





=head2 B<REQUIRED> Record => L<Paws::MachineLearning::Record>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Predict in L<Paws::MachineLearning>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

