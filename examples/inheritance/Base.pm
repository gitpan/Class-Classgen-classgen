# --- Generated by classgen 3.0 on Son Apr  2 17:12:12 MEST 2000 ---

	package Base;
	use strict;
;
sub new {
	my $self = shift;
	my $type = ref($self)||$self;

	# instance-variables:
	my $some_var;	#anythinguseful
	my %hash;	

	$self=bless {
		_some_var		=>	$some_var,
		_h_hash		=>	\%hash, %hash,
	}, $type;
	#$self->inherit_from($self->your_base::new());	# adapt when inheriting
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

sub get_some_var {
	my ($self) = @_;
	$self->{_some_var};
}

sub get_h_hash {
	my ($self) = @_;
	my $rh = $self->get_rh_hash();
	return %$rh;
}

sub get_keys_h_hash {
	my ($self) = @_;
	my %h = $self->get_h_hash();
	return keys %h;
}

sub get_rh_hash {
	my ($self) = @_;
	my $rh = $self->{_h_hash};
}

# --- manipulator methods --------------------------------

sub clear_some_var {
	my ($self) = @_;
	my $v = $self->set_some_var(undef);

}

sub clear_h_hash {
	my ($self) = @_;
	my $rh = $self->get_rh_hash();
	undef %$rh;
}

sub set_some_var {
	my ($self, $value) = @_;
	$self->{_some_var} = $value;
}

sub set_h_hash {
	my ($self, $key, $value) = @_;
	my $rh = $self->get_rh_hash();
	$$rh{$key} = $value;
}

1;

__END__

=head1 NAME 

Base - serves as base class for Derived (example).

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
