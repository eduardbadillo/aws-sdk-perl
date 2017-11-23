
package Paws::Glue::GetUserDefinedFunction;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has FunctionName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetUserDefinedFunction');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::GetUserDefinedFunctionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetUserDefinedFunction - Arguments for method GetUserDefinedFunction on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetUserDefinedFunction on the 
AWS Glue service. Use the attributes of this class
as arguments to method GetUserDefinedFunction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetUserDefinedFunction.

As an example:

  $service_obj->GetUserDefinedFunction(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 CatalogId => Str

The ID of the Data Catalog where the function to be retrieved is
located. If none is supplied, the AWS account ID is used by default.



=head2 B<REQUIRED> DatabaseName => Str

The name of the catalog database where the function is located.



=head2 B<REQUIRED> FunctionName => Str

The name of the function.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetUserDefinedFunction in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
