use strict;
use warnings;

use Article::Web;

my $app = Article::Web->apply_default_middlewares(Article::Web->psgi_app);
$app;

