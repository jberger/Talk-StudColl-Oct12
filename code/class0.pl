use MooseX::RememberHistory;
use MooseX::Declare;
use Method::Signatures::Modifiers;

class Force {
  has 'strength' => ( isa => 'Num',  is => 'rw', default => 0 );
  has 'affect'   => ( isa => 'CodeRef', is => 'ro', required => 1 ); 
}

class Thing {
  has 'mass' => ( isa => 'Num', is => 'ro', required => 1 );
  has 'x'    => ( traits => [ 'RememberHistory' ], isa => 'Num', 
                  is => 'rw', default => 0 );
  has 'vx'   => ( traits => [ 'RememberHistory' ], isa => 'Num',
                  is => 'rw', default => 0 );
}
