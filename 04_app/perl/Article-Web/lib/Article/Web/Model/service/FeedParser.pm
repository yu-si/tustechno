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
binmode STDOUT, ":utf8";


sub new {
  my $class = shift;
  my $self = {};
  return bless $self, $class;
}

sub parse {
  my ($this, $url) = @_;

  my $feed = XML::Feed->parse( URI->new($url))
        or die XML::Feed->errstr;

  my @list;
  for my $entry ($feed->entries){

    my $title = encode('shift_jis', $entry->title). "\n";
    my $content =  encode('shift_jis', $entry->content->body). "\n";
    #my $content =  encode('shift_jis', $entry->summary->body). "\n";
    #my $content = Encode::from_to($naviveContent, 'shift_jis', 'utf8');
    my $dt = DateTime::Format::W3CDTF->parse_datetime($entry->issued);
    my $timeStamp = $dt->date. "\n";
    #printf $entry->link."\n";
    printf $content;

    use Article::Web::Model::entity::Feed;
    our $feed = Article::Web::Model::entity::Feed->new(
      title => $title,
      content => $content,
      timeStamp => $timeStamp,
    );
    $feed->title($title);
    $feed->content($content);
    $feed->timeStamp($timeStamp);
    my %row_data;
    my @title;

    $row_data{"TITLE"} = $title;
    $row_data{"CONTENT"} = $content;
    $row_data{"TIMESTAMP"} = $timeStamp;
    printf "debug;";
    printf $feed->title();
    printf $feed->content();
    printf $feed->timeStamp();
    #printf %row_data;
    push(@list, \%row_data);
    #push(@list, \$feed);
  }
  return @list;
}
1;
