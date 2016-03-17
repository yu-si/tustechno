#!/usr/bin/perl
#
# Output File.
#
#
#

package service::FileOutputer;
use utf8;
use open ":utf8";
use File::Path;

sub new {
  my $class = shift;
  my $self = {};
  return bless $self, $class;
}

sub output {
  my ($this, $data) = @_;
  use const::Config;
  my $config = const::Config->new();
  my $dir = $config->outputDir();

  use service::DirectoryCreater;
  my $creater = service::DirectoryCreater->new();
  $creater->create($dir);

  open(DATAFILE, ">> $dir/output.html") or die("Fail to output files:$!");
  print DATAFILE $data;
}
1;
