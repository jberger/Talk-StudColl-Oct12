#!/usr/bin/env perl
use strict; use warnings;
use Sim;
use PDL;
use PDL::Graphics::Prima::Simple;

my $thing = Thing->new( mass => 2 );

my $acc = Force->new(
  strength => 2,
  affect => sub {shift->strength},
);

my $dec = Force->new(
  strength => -30,
  affect => sub {
    my ($self, $thing) = @_;
    return 0 if ($thing->x < 0.1);
    return $self->strength;
  },
);

