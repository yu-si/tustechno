#!/usr/bin/perl
#
# Atricle
#
#
#

package Article::Web::Model::entity::Article;
use utf8;


sub new {
  my $class = shift;
  my $self = {
    id => undef,
    name => 'reuter',
    url => 'http://jp.reuters.com/'
  };
  return bless $self, $class;
}

sub id {
  my $self = shift;
  if( @_ ){ $self->{id} = shift }
  return $self->{id};
}

sub name {
  my $self = shift;
  if( @_ ){ $self->{name} = shift }
  return $self->{name};
}

sub url {
  my $self = shift;
  if( @_ ){ $self->{url} = shift }
  return $self->{url};
}
1;
