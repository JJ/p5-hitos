package My::Hitos;

use Dancer2;
use My::Hitos::Config qw($hitos %config);

get '/status' => sub {
  return to_json { status => 'OK' };
};

get '/all' => sub {
  return to_json $hitos;
};

"Rock'n'roll";
