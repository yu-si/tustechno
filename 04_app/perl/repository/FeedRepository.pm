#!/usr/bin/perl
#
# Feed Repository.
#
#
#

package repository::FeedRepository;
use DBI;
use utf8;


sub new {
  my $class = shift;
  my $self = {};
  return bless $self, $class;
}

sub find {

  my $database = DBI->connect("dbi:SQLite:dbname=feed.db");
	my $query = $database->prepare("select * from feed where id = '1'");
  $query->execute;
  my $ret;
  while (my @row = $query->fetchrow_array) {
      my $recode = "@row\n";
      my ($id,$url) = split(/\s/,$recode);

      print $url + "\n";
      $ret = $url;
  }
  $query->finish;
  undef $query;
  $database->disconnect;
  return $ret;
}

sub findAll {
  #none
}

sub register {
  # none
}

sub delete {
  # none
}

sub flush {
  # none
}

1;
