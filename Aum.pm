=head1 NAME

Poetry::Aum

=head1 DESCRIPTION

The sound the breath makes when focused upon.

=head1 SYNOPSIS

	use Poetry::Aum

=head1 DEPENDENCIES

	Abstract::Concept
	Abstract::Entity
	Abstract::Interest

=head1 CONSTRUCTOR METHOD new

If you feel you need documentation for this module, please consult
an experienced Perl Monger.

=cut

package Poetry::Aum;
use strict;
use warnings;
our $VERSION = 1;

sub new {
	my $self = new Abstract::Entity(rand);
	$self->{ego}  = new Abstract::Concept;
	$self->{goal} = new Abstract::Interest;
	bless $self;	# Intentionally classless

	my $philosophy;

	DARK_NIGHT:
	while (defined $goal){
		$philosophy = <STDIN>;
		study $philosophy;
		if ($self->understands($philosophy)){
			undef $goal; # implies last DARK_NIGHT;
		}
	}

	$self->{$philosophy} = localtime;
	return;			# Does this hand over my $self?
}

1;


=head1 AUTHOR

Lee Goddard (LGoddard@CPAN.org) 07/05/2001 10:37

=head1 COPYRIGHT

Copyright 2001 Lee Goddard.

This library is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

