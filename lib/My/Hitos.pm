package My::Hitos;

use Dancer2;
use My::Hitos::Config qw($hitos %config);

for my $c (keys %config) {
  set $c => $config{$c}
}

prefix undef;

get '/status' => sub {
  return to_json { status => 'OK' };
};

get '/all' => sub {
  return to_json $hitos;
};

"Rock'n'roll";
