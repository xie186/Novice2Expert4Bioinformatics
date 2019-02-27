#!/usr/bin/perl -w
use strict;

my ($list) = @ARGV;

open LI, $list or die "$!";
my $num = 0;
while(<LI>){
    chomp;
    my $index = $num;
    if($index <10){
        $index="0".$index;
    }
    next if (/^#/ || length $_ ==0);
    #print "$_\n";
    my @file = <*$_>;
    print "mv @file $index\_$_\n";
    $num ++;
}
close LI;

