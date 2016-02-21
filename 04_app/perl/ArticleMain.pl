#
# Atrticle Main
#
#
#

use strict;
use warnings;
use utf8;


# Execute
use const::MessageConst;
our $message = const::MessageConst->new();
print $message->title();
print "\r\n";
print $message->subTitle();
print "\r\n";

# Get an article
use service::ArticleService;
my $service = service::ArticleService->new();
my $article = $service->retrieve();
my $url = $article->url();

# Connect to web pages
use service::HttpBuilder;
my $builder = service::HttpBuilder->new();
my $ret = $builder->connect($url);
#print $ret;

if ($ret =~ /([A-Z])/) {
    print "$1\n";
}

#my @word = split(/:/, $ret);
#print "@word\n";

# Output an article
use service::FileOutputer;
my $outputer = service::FileOutputer->new();
$outputer->output($ret)
