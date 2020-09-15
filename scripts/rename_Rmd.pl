#!/usr/bin/perl -w
use strict;

my ($list) = @ARGV;

open LIST, $list or die "$!";
my $i = 0;
while(<LIST>){
    chomp;
    next if !/Rmd/ || /#/;
    chomp; 
    my $index = sprintf("%02d", $i);
    my $new_file = $_;
    $new_file =~s/^\d+_//;
    print "mv $_ $index\_$new_file\n";
    ++$i;
}
