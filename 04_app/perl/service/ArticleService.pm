#!/usr/bin/perl
#
# Article Service.
#
#
#

package service::ArticleService;
use utf8;


sub new {
  my $class = shift;
  my $self = {};
  return bless $self, $class;
}

sub retrieve {

  use repository::ArticleRepository;
  our $repository = repository::ArticleRepository->new();
  return $repository->find();
}
1;
