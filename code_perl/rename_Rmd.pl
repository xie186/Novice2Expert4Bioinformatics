#!/usr/bin/perl -w
use strict;

my ($list) = @ARGV;

open LIST, $list or die "$!";
my $i = 0;
while(<LIST>){
    chomp;
    next if !/Rmd/ || /#/;
    my @file = <*$_>;
    my $index = sprintf("%02d", $i);
    print "mv @file $index\_$_\n";
    ++$i;
}
