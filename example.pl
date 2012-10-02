#!/usr/bin/env perl

use strict;
use warnings;

use Sim;
use PDL;
use PDL::Graphics::Prima::Simple;

my $thing = Thing->new(
  mass => 2,
);

my $acc = Force->new(
  strength => 2,
  affect => sub {
    my ($self, $thing) = @_;
    return $self->strength;
  },
);

my $dec = Force->new(
  strength => -30,
  affect => sub {
    my ($self, $thing) = @_;
    return 0 if ($thing->x < 0.1);
    return $self->strength;
  },
);

my $sim = Sim->new(
  end => 5,
  things => [ $thing ],
  forces => [ $acc, $dec ],
);

$sim->run;

my $time = pdl $sim->time_history;
my $x    = pdl $thing->x_history;

line_plot($time, $x);

