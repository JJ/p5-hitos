#!/usr/bin/env perl

use v5.14;

use Dancer2;
use File::Slurper qw(read_text);

set content_type => 'application/json';
set port => 31415;
set engines => {
		logger => {
			   File => {
				    log_dir   => "/tmp",
				    file_name => 'p5hitos.log',
				   }
			  }
	       };
set logger => 'file';

my $path;
for my $p ( qw( hitos.json /data/hitos.json ./data/hitos.json ../data/hitos.json) ) {
  if ( -r $p ) {
    $path = $p;
  }
}

my $hitos = from_json read_text($path);

get '/status' => sub {
  return to_json { status => 'OK' };
};

get '/all' => sub {
  return to_json $hitos;
};

dance;
