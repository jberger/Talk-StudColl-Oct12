my $name = 'Joel';

sub append_name {
  my ($name, $append) = @_;
  return $name . ' ' . $append;
}

$name = append_name( $name, 'Berger' );

print $name;
