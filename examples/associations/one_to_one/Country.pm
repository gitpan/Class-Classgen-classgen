# --- Generated by classgen 3.03 on Fre Dez 29 15:40:15 MET 2000 ---

$VERSION=1.00;
	package Country;
;
	require 'Country_gs.pm';

sub new {
	my ($self) = @_;

	# instance-variables:
	my $name;	
	my $a_has_capital;	

	$self=bless {
		_name		=>	$name,
		_a_has_capital		=>	$a_has_capital,
	}, ref($self)||$self;
	#$self->inherit_from($self->your_base::new());	# adapt when inheriting
	return $self;
}

# --- methods specific for this class ---------------------

sub specific {
	my ($self) = @_;
}

sub greetings {
	my ($self) = @_;
	print "Hallo, Hello, Salut\n";
}

# --- inheritance methode -----------------------------------

sub inherit_from {
	my ($self, $base_blessed) = @_;
	my @l = keys %$base_blessed;
	foreach (@l) {
		$self->{$_} = $base_blessed->{$_};
	}
}

1;

__END__

=head1 NAME 

Country - Introduces a simple Country-object (/examples)

=head1 VERSION

1.00

=head1 SYNOPSIS

	use Country;
	$co=Country->new();
	$co->set_name('the name of this country');
	$city_object=$co->get_a_has_capital();

=head1 DESCRIPTION

Rumbaugh uses this simple example to illustrate a one-to-one
association between a Country- and a City-object in ch. 3.2 of
"Object Oriented Modelling".

The idea is that any instance of a Country-class can access all
functions of the associated City-class VIA the association (and
vice versa). The one-to-one association introduces a lot of
flexibility and functionality into object-oriented design.

There are many ways to implement this one-to-one association. The
author decided to use an internal instance variable
$a_has_capital. It than is the task of the program, which uses
Coutry.pm, to establish a correct association with a correct city.

=head1 ENVIRONMENT

=head1 DIAGNOSTICS

=head1 BUGS

=head1 FILES

=head1 SEE ALSO

	perldoc associated
	perldoc City.pm

=head1 AUTHOR

Name:  Michael Schlueter 

email: mschlue@cpan.org

=head1 COPYRIGHT

Copyright (c) 2000, Michael Schlueter. All Rights Reserved.
This module is free software. It may be used, redistributed
and/or modified under the same terms as Perl itself.