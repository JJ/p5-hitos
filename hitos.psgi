#!/usr/bin/env perl

use v5.14;
use lib qw(lib);
use My::Hitos::Config qw( %config );

use Mojolicious::Commands;

# Start command line interface for application
Mojolicious::Commands->start_app('My::Hitos', 'daemon', '-l', "http://*:$config{'port'}");

