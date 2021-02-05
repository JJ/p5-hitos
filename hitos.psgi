#!/usr/bin/env perl

use v5.14;
use lib qw(lib);

use Mojo::Base -strict;
use Mojolicious::Commands;

# Start command line interface for application
Mojolicious::Commands->start_app('My::Hitos');

