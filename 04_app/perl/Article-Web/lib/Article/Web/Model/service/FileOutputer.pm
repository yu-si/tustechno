#!/usr/bin/perl
#
# Output File.
#
#
#

package Article::Web::Model::service::FileOutputer;
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
  use Article::Web::Model::const::Config;
  my $config = Article::Web::Model::const::Config->new();
  my $dir = $config->outputDir();

  use Article::Web::Model::service::DirectoryCreater;
  my $creater = Article::Web::Model::service::DirectoryCreater->new();
  $creater->create($dir);

  open(DATAFILE, ">> $dir/output.html") or die("Fail to output files:$!");
  print DATAFILE $data;
}
1;
