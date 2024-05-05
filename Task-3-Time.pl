package Animal;

sub new {
    my $class = shift;
    my $self = {};
    bless $self, $class;
    return $self;
}

sub speak {
    my $self = shift;
    print "Animal speaks\n";
}

package Cat;
use base 'Animal';

sub speak {
    my $self = shift;
    print "Cat meows\n";
    $self->SUPER::speak();
}

my $animal = Animal->new();
$animal->speak();

my $cat = Cat->new();
$cat->speak();