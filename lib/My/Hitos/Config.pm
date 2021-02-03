package My::Hitos::Config;

use strict;
use warnings;
use v5.10;

use Dancer2;
use File::Slurper qw(read_text);
use Exporter 'import';

our @EXPORT_OK = qw( $hitos %config );

my $path;
for my $p ( qw( hitos.json /config/hitos.json ./config/hitos.json ../config/hitos.json) ) {
  if ( -r $p ) {
    $path = $p;
  }
}

our $hitos = from_json read_text($path);

use constant CONFIG_VARIABLES => qw( log_dir );
our %CONFIG_DEFAULTS = ( log_dir => "/tmp" );

our %config;
for my $c (CONFIG_VARIABLES) {
  $config{$c} = $ENV{"P5HITOS_$c"} // $CONFIG_DEFAULTS{$c};
}


"Bamba";
