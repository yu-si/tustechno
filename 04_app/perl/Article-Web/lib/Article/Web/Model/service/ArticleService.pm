#!/usr/bin/perl
#
# Article Service.
#
#
#

package Article::Web::Model::service::ArticleService;
use utf8;


sub new {
  my $class = shift;
  my $self = {};
  return bless $self, $class;
}

sub retrieve {

  use Article::Web::Model::repository::ArticleRepository;
  our $repository = Article::Web::Model::repository::ArticleRepository->new();
  return $repository->find();
}
1;
