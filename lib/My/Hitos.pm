package My::Hitos;

use v5.14;

use Dancer2;
use My::Hitos::Config qw($hitos %config);

for my $c (keys %config) {
  set $c => $config{$c}
}

set content_type => 'application/json';

say setting('log_dir');

get '/status' => sub {
  return to_json { status => 'OK' };
};

get '/all' => sub {
  return to_json $hitos;
};

"Rock'n'roll";
