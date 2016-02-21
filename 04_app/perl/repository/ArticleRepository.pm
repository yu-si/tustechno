#
# Article Repository.
#
#
#

package repository::ArticleRepository;
use utf8;


sub new {
  my $class = shift;
  my $self = {};
  return bless $self, $class;
}

sub find {

  use factory::ArticleFactory;
  my $factory = factory::ArticleFactory->new();
  our $article = $factory->create();
  return $article
}

sub findAll {
  #none
}

sub register {
  # none
}

sub delete {
  # none
}

sub flush {
  # none
}

1;
