package Poetry::Aum;
use strict;
use warnings;
our $VERSION = 0;

sub new {
	my $self = new Abstract::Entity(rand);
	my $ego  = new Abstract::Concept;
	my $goal = new Abstract::Interest;
	our $philosophy;

	DARK_NIGHT:
	while (defined $goal){
		$philosophy = <STDIN>;
		study $philosophy;
		if ($ego->understands($philosophy)){
			undef $goal; # implies last DARK_NIGHT;
		}
	}

	$self->{$philosophy} = localtime;
	bless $self;	# Intentionally classless
	return;			# Does this hand over my $self?
}

1;
