#!/usr/bin/perl
#
# Http Builder
#
#
#

package Article::Web::Model::service::HttpBuilder;
use utf8;
use LWP::Simple;


sub new {
  my $class = shift;
  my $self = {};
  return bless $self, $class;
}

sub connect {
  my ($this, $url) = @_;
  #print $url;
  my $html = get($url) or die "Cannot connect a specfic url.";
  return $html;
}
1;
