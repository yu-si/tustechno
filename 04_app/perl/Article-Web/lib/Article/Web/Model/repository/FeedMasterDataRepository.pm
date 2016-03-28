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
  $database->do("insert into feed values(2, 'http://feeds.feedburner.com/haishin/rss/index');");
  $database->do("insert into feed values(3, 'http://slashdot.jp/slashdotjp.rss');");
  $database->do("insert into feed values(4, 'http://b.hatena.ne.jp/search/tag?q=webservice&mode=rss');");
  $database->do("insert into feed values(5, 'http://feeds.feedburner.com/hatena/b/hotentry');");
  $database->do("insert into feed values(6, 'http://blog.livedoor.jp/dqnplus/index.rdf');");
  $database->do("insert into feed values(7, 'http://gigazine.net/news/rss_2.0/');");
  $database->do("insert into feed values(8, 'http://feeds.lifehacker.jp/rss/lifehacker/index.xml');");
  $database->do("insert into feed values(9, 'http://blog.livedoor.jp/geek/index.rdf');");
  $database->do("insert into feed values(10, 'http://blog.livedoor.jp/insidears/index.rdf');");

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
