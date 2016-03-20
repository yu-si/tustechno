#!/usr/bin/perl
#
# Feed Service.
#
#
#

package Article::Web::Model::service::FeedService;
use utf8;


sub new {
  my $class = shift;
  my $self = {};
  return bless $self, $class;
}

sub retrieve {

  use Article::Web::Model::repository::FeedMasterDataRepository;
  our $repository = Article::Web::Model::repository::FeedMasterDataRepository->new();
  $repository->create();

  use Article::Web::Model::repository::FeedRepository;
  our $repository = Article::Web::Model::repository::FeedRepository->new();
  return $repository->find();
}
1;
