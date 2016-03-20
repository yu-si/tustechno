#!/usr/bin/perl
#
# Feed Master Data Repository.
#
#
#

package Article::Web::Model::repository::FeedMasterDataRepository;
use DBI;
use utf8;


sub new {
  my $class = shift;
  my $self = {};
  return bless $self, $class;
}

sub create {

  my $database = DBI->connect("dbi:SQLite:dbname=feed.db");
  $database->do("create table feed(id integer, url text);");
  $database->do("insert into feed values(1, 'http://feeds.reuters.com/reuters/worldNews');");

	my $query = $database->prepare("select * from feed where id = '1'");
  $query->execute;
  while (my @row = $query->fetchrow_array) {
      my $recode = "@row\n";
      my ($id,$url) = split(/\s/,$recode);
      print $url + "\n"
  }
  $query->finish;
  undef $query;
}
1;
