#!/usr/bin/env perl

use v5.14;
use File::Slurper qw(read_lines);
use JSON;

my $filename = shift || "/log/p5hitos.log";
my @lines = read_lines( $filename );
die "Empty file" if !@lines;

my @gets;
for my $l ( @lines ) {
  if ( $l =~ /looking for get (\S+)/ ) {
    my ($date, $route) = ($l =~ /\@([^>]+)>\s+looking for get (\S+)/);
    push @gets, { date => $date,
		  route => $route };
  }
}

say to_json \@gets;
