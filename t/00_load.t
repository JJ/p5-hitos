# -*- mode: cperl -*-

use Test::More;

for my $m (qw(Hitos::Config Hitos)) {
  use_ok( "My::$m" );
}

done_testing();
