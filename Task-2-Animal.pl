package Animal;

sub new {
    my $class = shift;
    my $self = {};
    bless $self, $class;
    return $self;
}

sub eat {
    my ($self, $food) = @_;
    print "Animal is eating $food\n";
}

sub sleep {
    my ($self, $duration) = @_;
    print "Animal is sleeping for $duration hours\n";
}

package Cat;
use base 'Animal';

sub new {
    my $class = shift;
    my $self = $class->SUPER::new();
    bless $self, $class;
    return $self;
}

sub eat {
    my ($self, $food) = @_;
    print "Cat is eating $food\n";
    $self->SUPER::eat($food);
}

my $animal = Animal->new();
$animal->eat("meat");
$animal->sleep(8);

my $cat = Cat->new();
$cat->eat("fish");
$cat->sleep(10);
