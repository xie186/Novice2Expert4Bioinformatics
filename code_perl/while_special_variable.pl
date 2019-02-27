#!/usr/bin/perl
use warnings;
use strict;

my $fasta = "./data/test_ref.fa";

open FASTA, $fasta or die "$!: $fasta";
# Here each line is assigned to $_
while(<FASTA>){
    chomp; # chomp works on $_
	print "$_\n";
}
close FASTA;