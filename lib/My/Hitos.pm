package My::Hitos;

use v5.14;

use Dancer2;
use My::Hitos::Config qw($hitos %config);

for my $c (keys %config) {
  say "Sets $c do $config{$c}";
  set $c => $config{$c}
}

get '/status' => sub {
  return to_json { status => 'OK' };
};

get '/all' => sub {
  return to_json $hitos;
};

"Rock'n'roll";
