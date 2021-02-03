# -*- mode: cperl -*-

use Test::More;

use My::Hitos::Config qw($hitos %config);

ok( $hitos, '$hitos imported' );
ok( %config, '%config imported' );

done_testing;
