#
# Article Factory.
#
#
#

package factory::ArticleFactory;
use utf8;


sub new {
  my $class = shift;
  my $self = {};
  return bless $self, $class;
}

sub create {

  use entity::Article;
  our $article = entity::Article->new();
  return $article
}
1;
