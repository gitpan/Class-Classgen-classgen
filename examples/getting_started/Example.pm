# --- Generated by classgen 3.0 on Son Apr  2 17:04:32 MEST 2000 ---

package Example;
	use strict;
	;
sub new {
	my $self = shift;
	my $type = ref($self)||$self;

	# instance-variables:
	my $var;	
	my %wages;	
	my @monthly;	

	$self=bless {
		_var		=>	$var,
		_h_wages		=>	\%wages, %wages,
		_l_monthly		=>	\@monthly, @monthly,
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

sub get_var {
	my ($self) = @_;
	$self->{_var};
}

sub get_monthly_at {
	my ($self, $index) = @_;
	my $rl = $self->get_rl_monthly();
	return $$rl[$index];
}

sub get_h_wages {
	my ($self) = @_;
	my $rh = $self->get_rh_wages();
	return %$rh;
}

sub get_keys_h_wages {
	my ($self) = @_;
	my %h = $self->get_h_wages();
	return keys %h;
}

sub get_l_monthly {
	my ($self) = @_;
	my $rl = $self->get_rl_monthly();
	return @$rl;
}

sub get_rh_wages {
	my ($self) = @_;
	my $rh = $self->{_h_wages};
}

sub get_rl_monthly {
	my ($self) = @_;
	my $rl = $self->{_l_monthly};
}

# --- manipulator methods --------------------------------

sub clear_var {
	my ($self) = @_;
	my $v = $self->set_var(undef);

}

sub clear_h_wages {
	my ($self) = @_;
	my $rh = $self->get_rh_wages();
	undef %$rh;
}

sub clear_l_monthly {
	my ($self) = @_;
	my $rl = $self->get_rl_monthly();
	undef @$rl;
}

sub pop_monthly {
	my ($self) = @_;
	my $rl = $self->get_rl_monthly();
	return pop @$rl;
}

sub push_monthly {
	my ($self, $value) = @_;
	my $rl = $self->get_rl_monthly();
	push @$rl, $value;
}

sub set_var {
	my ($self, $value) = @_;
	$self->{_var} = $value;
}

sub set_h_wages {
	my ($self, $key, $value) = @_;
	my $rh = $self->get_rh_wages();
	$$rh{$key} = $value;
}

sub set_l_monthly {
	my ($self, $index, $value) = @_;
	my $rl = $self->get_rl_monthly();
	$$rl[$index] = $value;
}

1;

__END__

=head1 NAME 

Example - generated by "classgen example.txt Example.pm"

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
