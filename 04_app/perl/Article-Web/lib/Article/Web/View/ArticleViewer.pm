package Article::Web::View::ArticleViewer;

use strict;
use base 'Catalyst::View::TT';
use utf8;
use HTML::Template;
binmode STDOUT, ":utf8";

=head1 NAME

Article::Web::View::ArticleViewer - TT View Component

=cut
sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

	my $template = HTML::Template->new(
    filename => 'web/article.tmpl',
    open_mode => '<:encoding(utf8)'
    );


 # RSS parse
	use Article::Web::Model::service::FeedService;
	my $service = Article::Web::Model::service::FeedService->new();
	my $url = $service->retrieve();

	use Article::Web::Model::service::FeedParser;
	my $parser = Article::Web::Model::service::FeedParser->new();

	my @feeds = $parser->parse($url);

  $template->param(PAGE_TITLE => "Article and Feed Gather.");

  my @values = ();
  my %row;
  for (my $count = 1; $count  < 10;$count++){
    $row{VALUE} = "test";
    push(@values, \%row);
  }
  $template->param(VALUES => \@values);
  $template->param(FEEDS => \@feeds);

      for (my $i = 1 ; $i <= @feeds; $i++) {
        #my $feed = "@feeds[$i]";
        my $feed = pop(@feeds);
      }

	print "Content-Type: text/html\n\n", $template->output;
	$c->response->body($template->output);
}

=head1 SYNOPSIS

See L<Article::Web>

=head1 DESCRIPTION

TT View Component.

=head1 AUTHOR

A clever guy

=head1 LICENSE

This library is free software . You can redistribute it and/or modify
it under the same terms as perl itself.

=cut

1;
