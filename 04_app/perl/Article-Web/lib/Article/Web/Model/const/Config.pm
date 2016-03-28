#!/usr/bin/perl
#
# Config
#
#
#

package Article::Web::Model::const::Config;
use utf8;

  my $eucjp = "eucjp";
  my $cp932 = "cp932";
  my $utf8 = "utf8";
  my $shiftjis = "shiftjis";

sub new {
  my $class = shift;
  my $self = {
    baseDir => ".",
    outputDir => 'output'
  };
  return bless $self, $class;
}

sub baseDir {
  my $self = shift;
  if( @_ ){ $self->{baseDir} = shift }
  return $self->{baseDir};
}

sub outputDir {
  my $self = shift;
  if( @_ ){ $self->{outputDir} = shift }
  return $self->{outputDir};
}
1;
