use Test::More; # -*- mode: cperl -*-

use lib qw(lib);
use My::Hitos;
use Plack::Test;
use HTTP::Request::Common;
use JSON;

my $app  = My::Hitos->to_app;

test_psgi $app, sub {
  my $cb  = shift;

  my $res = $cb->(GET "/status");
  is $res->code, 200, 'Status OK';
  my $status = from_json $res->content;
  is $status->{'status'}, "OK", 'Status devuelto correctamente';

  $res = $cb->(GET "/all");
  is $res->code, 200, 'Status OK';
  my $all = from_json $res->content;
  cmp_ok keys %$all, ">", 1, 'Devuelve todos los hitos';

};

done_testing;
