# NOTE: this file has been edited manually to switch on inheritance

# --- Generated by classgen 3.0 on Son Apr  2 17:12:20 MEST 2000 ---

	package Derived;
	use Base;		# <<< this is new
	@ISA=("Base");		# <<< this is new
;
sub new {
	my $self = shift;
	my $type = ref($self)||$self;

	# instance-variables:
	my %another_bunsch_of_data;	#ifyoulike

	$self=bless {
		_h_another_bunsch_of_data		=>	\%another_bunsch_of_data, %another_bunsch_of_data,
	}, $type;

	# the # has been removed from the beginning of the next line:
	$self->inherit_from($self->Base::new());	# adapt when inheriting
	return $self;
}

# --- methods specific for this class ---------------------

sub specific {
	my ($self) = @_;
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

sub get_h_another_bunsch_of_data {
	my ($self) = @_;
	my $rh = $self->get_rh_another_bunsch_of_data();
	return %$rh;
}

sub get_keys_h_another_bunsch_of_data {
	my ($self) = @_;
	my %h = $self->get_h_another_bunsch_of_data();
	return keys %h;
}

sub get_rh_another_bunsch_of_data {
	my ($self) = @_;
	my $rh = $self->{_h_another_bunsch_of_data};
}

# --- manipulator methods --------------------------------

sub clear_h_another_bunsch_of_data {
	my ($self) = @_;
	my $rh = $self->get_rh_another_bunsch_of_data();
	undef %$rh;
}

sub set_h_another_bunsch_of_data {
	my ($self, $key, $value) = @_;
	my $rh = $self->get_rh_another_bunsch_of_data();
	$$rh{$key} = $value;
}

1;

__END__

=head1 NAME 

Derived - Example how to implement Base::Derived (/examples).

=head1 VERSION

=head1 SYNOPSIS

=head1 DESCRIPTION


=head1 ENVIRONMENT

=head1 DIAGNOSTICS

=head1 BUGS

=head1 FILES

=head1 SEE ALSO

=head1 AUTHOR

Name:  <your name here> 

email: <your email address here>

=head1 COPYRIGHT

Copyright (c) 2000, <your name here>. All Rights Reserved.
This module is free software. It may be used, redistributed
and/or modified under the same terms as Perl itself.
