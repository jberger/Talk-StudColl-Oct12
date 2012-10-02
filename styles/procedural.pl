use strict; use warnings;

my $name = 'Joel';

sub append_name {
  my $append = shift;
  $name = $name . ' ' . $append;
}

append_name( 'Berger' );

print $name; # Joel Berger
