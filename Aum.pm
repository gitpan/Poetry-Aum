package Poetry::Aum;
use strict;
use warnings;
our $VERSION = 1.1;

=head1 NAME

Poetry::Aum

=head1 DESCRIPTION

The sound the breath makes when focused upon.

=head1 SYNOPSIS

	use Poetry::Aum

=head1 DEPENDENCIES

	Poetry::Abstract::Concept
	Poetry::Abstract::Entity
	Poetry::Abstract::Interest

=head1 CONSTRUCTOR METHOD new

If you feel you need documentation for this module, please consult an experienced Perl Monger/Rabbi.

=cut


sub new {
	my $self = new Poetry::Abstract::Entity(rand);
	$self->{ego}  = new Poetry::Abstract::Concept;
	$self->{goal} = new Poetry::Abstract::Interest;
	bless $self;	# Intentionally classless

	my $philosophy;

	DARK_NIGHT:
	while (exists $self->{goal}){
		$philosophy = <STDIN>;
		study $philosophy;
		if ($self->understands($philosophy)){
			delete $self->{goal}; # implies last DARK_NIGHT;
		}
	}

	$self->{$philosophy} = localtime;
	return;			# Hand over my $self
}

1;


=head1 TODO

=item *

Poetry::Abstract classes

=item *

Text-generator engine

=head1 AUTHOR

Lee Goddard (LGoddard@CPAN.org) 07/05/2001 10:37

=head1 COPYRIGHT

Copyright 2001 Lee Goddard.

This library is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

