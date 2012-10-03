use MooseX::Declare;

class Person {
  has 'name' => ( is => 'rw', isa => 'Str', required => 1 );
  method append_name ($append) {
    my $name = $self->name;
    $self->name( $name . ' ' . $append );
  }
}

class Student extends Person {
  has 'courses' => (is => 'rw', isa => 'ArrayRef', default => sub { [] });
  method study () {
    foreach my $course (@{ $self->courses }) {
      print "Studying $course\n";
    }
  }
}

my $student = Student->new(
  name => 'Joel',
  courses => [ 'Quantum Mechanics', 'Modern Optics' ],
);

$student->study;
