use Test::More; # -*- mode: cperl -*-

use lib qw(. lib);
use My::Hitos;
use Test::Mojo;
use JSON;

my $fn;
if ( -f 'hitos.psgi' ) {
  $fn = 'hitos.psgi';
} else {
  $fn = '../hitos.psgi';
}

my $t = Test::Mojo->new(Mojo::File->new($fn));
$t->ua->max_redirects(1);

$t->get_ok("/status")
  ->status_is(200)
  ->json_is( '/status' => 'OK' );

$t->get_ok("/all")
  ->status_is(200);

done_testing;
