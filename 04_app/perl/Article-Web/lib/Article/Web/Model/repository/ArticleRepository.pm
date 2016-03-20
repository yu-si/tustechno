#!/usr/bin/perl
#
# Article Repository.
#
#
#

package Article::Web::Model::repository::ArticleRepository;
use utf8;


sub new {
  my $class = shift;
  my $self = {};
  return bless $self, $class;
}

sub find {

  use Article::Web::Model::factory::ArticleFactory;
  my $factory = Article::Web::Model::factory::ArticleFactory->new();
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
