my $name = 'Joel';

sub join_names {
  my ($first, $last) = @_;
  return $first . ' ' . $last;
}

$name = join_names( $name, 'Berger' );

print $name; # Joel Berger
