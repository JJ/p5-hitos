#!/usr/bin/env perl

use v5.14;

use Dancer2;
use File::Slurper qw(read_text);

set log => 'debug';

my $path;
for my $p ( qw( hitos.json /data/hitos.json ./data/hitos.json ../data/hitos.json) ) {
  if ( -r $p ) {
    $path = "hitos.json";
  }
}

my $hitos = from_json read_text($path);

get '/status' => sub {
  return to_json { status => 'OK' };
};

get '/all' => sub {
  return to_json $hitos;
};

start;
