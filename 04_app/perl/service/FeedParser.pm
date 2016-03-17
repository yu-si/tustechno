#!/usr/bin/perl
#
# Feed Parser.
#
# ppm install XML-Feed
#

package service::FeedParser;
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

  use XML::Feed;
  use URI;
  use Encode;
  my $feed = XML::Feed->parse( URI->new('http://b.hatena.ne.jp/t/webservice?sort=hot&threshold=&mode=rss'))
        or die XML::Feed->errstr;

  for my $entry ($feed->entries){
    #print encode_utf8( $entry->title). "\n";
    print encode('shift_jis', $entry->title). "\n";
    print $entry->link."\n";
    #print encode('utf-8', $entry->summary->body);
    print encode('shift_jis', $entry->summary->body). "\n";
    my $dt = DateTime::Format::W3CDTF->parse_datetime($entry->issued);
    print $dt->date. "\n";
  }
}
1;
