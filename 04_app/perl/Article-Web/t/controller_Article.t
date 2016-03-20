use strict;
use warnings;
use Test::More;


use Catalyst::Test 'Article::Web';
use Article::Web::Controller::Article;

ok( request('/article')->is_success, 'Request should succeed' );
done_testing();
