#!/usr/bin/perl
#
# Article Factory.
#
#
#

package Article::Web::Model::factory::ArticleFactory;
use utf8;


sub new {
  my $class = shift;
  my $self = {};
  return bless $self, $class;
}

sub create {

  use Article::Web::Model::entity::Article;
  our $article = Article::Web::Model::entity::Article->new();
  return $article
}
1;
