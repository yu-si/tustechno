#!/usr/bin/perl
#
# Feed Service.
#
#
#

package service::FeedService;
use utf8;


sub new {
  my $class = shift;
  my $self = {};
  return bless $self, $class;
}

sub retrieve {

  use repository::FeedMasterDataRepository;
  our $repository = repository::FeedMasterDataRepository->new();
  $repository->create();

  use repository::FeedRepository;
  our $repository = repository::FeedRepository->new();
  return $repository->find();
}
1;
