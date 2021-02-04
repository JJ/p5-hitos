package My::Hitos;

use v5.14;

use Dancer2;
use My::Hitos::Config qw($hitos %config);

for my $c (keys %config) {
  set $c => $config{$c}
}

set log_dir => '/tmp';
set port => 31415;

get '/status' => sub {
  return to_json { status => 'OK' };
};

get '/all' => sub {
  return to_json $hitos;
};

"Rock'n'roll";
