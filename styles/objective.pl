use MooseX::Declare;

class Person {
  has 'name' => ( is => 'rw', isa => 'Str', required => 1 );
  method append_name ($append) {
    my $name = $self->name;
    $self->name( $name . ' ' . $append );
  }
}

my $person = Person->new( name => 'Joel' );
$person->append_name( 'Berger' );

print $person->name;
