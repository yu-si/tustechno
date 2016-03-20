#!/usr/bin/perl
#
# Feed Parser.
#
# ppm install XML-Feed
#

package Article::Web::Model::service::FeedParser;
use XML::Feed;
use URI;
use Encode;
use utf8;


sub new {
  my $class = shift;
  my $self = {};
  return bless $self, $class;
}

sub parse {
  my ($this, $url) = @_;

  my $feed = XML::Feed->parse( URI->new($url))
        or die XML::Feed->errstr;

  for my $entry ($feed->entries){



    my $title = encode('shift_jis', $entry->title). "\n";
    my $content =  encode('shift_jis', $entry->summary->body). "\n";
    my $dt = DateTime::Format::W3CDTF->parse_datetime($entry->issued);
    my $timeStamp = $dt->date. "\n";
    print $entry->link."\n";

    use Article::Web::Model::entity::Feed;
    our $feed = Article::Web::Model::entity::Feed->new(
      title => $title,
      content => $content,
      timeStamp => $timeStamp,
    );
    print $feed;
  }
  return "this method return list object.";
}
1;
