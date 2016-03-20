#!/usr/bin/perl
#
# Feed
#
#
#

package Article::Web::Model::entity::Feed;
use utf8;


sub new {
  my $class = shift;
  my $self = {
    id => undef,
    title => "",
    content => "",
    timeStamp => ""
  };
  return bless $self, $class;
}

sub id {
  my $self = shift;
  if( @_ ){ $self->{id} = shift }
  return $self->{id};
}

sub title {
  my $self = shift;
  if( @_ ){ $self->{title} = shift }
  return $self->{title};
}

sub content {
  my $self = shift;
  if( @_ ){ $self->{content} = shift }
  return $self->{content};
}

sub timeStamp {
  my $self = shift;
  if( @_ ){ $self->{timeStamp} = shift }
  return $self->{timeStamp};
}
1;
