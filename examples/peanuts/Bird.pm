# --- Generated by classgen 3.0 on Son Apr  2 17:53:23 MEST 2000 ---

	package Bird;
	use Creature;
	@ISA=( "Creature" );
;
sub new {
	my $self = shift;
	my $type = ref($self)||$self;

	# instance-variables:
	my $a;	#justadummy

	$self=bless {
		_a		=>	$a,
	}, $type;
	$self->inherit_from($self->Creature::new());	# adapt when inheriting
	return $self;
}

# --- methods specific for this class ---------------------

sub specific {
	my ($self) = @_;
}

sub talk {
	my ($self,$text) = @_;
	$self->make_noise($text);
}

# --- inheritance methode -----------------------------------

sub inherit_from {
	my ($self, $base_blessed) = @_;
	my @l = keys %$base_blessed;
	foreach (@l) {
		$self->{$_} = $base_blessed->{$_};
	}
}

# --- accessor methods -----------------------------------

sub get_a {
	my ($self) = @_;
	$self->{_a};
}

# --- manipulator methods --------------------------------

sub clear_a {
	my ($self) = @_;
	my $v = $self->set_a(undef);

}

sub set_a {
	my ($self, $value) = @_;
	$self->{_a} = $value;
}

1;

__END__

=head1 NAME 

Bird - just another Creature.

=head1 VERSION

=head1 SYNOPSIS

=head1 DESCRIPTION

Whatch out, this bird will talk.

=head1 ENVIRONMENT

=head1 DIAGNOSTICS

=head1 BUGS

=head1 FILES

=head1 SEE ALSO

=head1 AUTHOR

Name:  Michael Schlueter 

email: mschlue@cpan.org


=head1 COPYRIGHT

Copyright (c) 2000, Michael Schlueter. All Rights Reserved.
This module is free software. It may be used, redistributed
and/or modified under the same terms as Perl itself.
