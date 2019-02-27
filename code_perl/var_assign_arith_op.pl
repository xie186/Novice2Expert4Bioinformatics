#!/usr/bin/perl
use warnings;
use strict;

#assign two strings to two variables
my $dna_seq1 = "ACCTCGGTACAGTGAATGGGAAACGTAGCTGAT";
my $dna_seq2 = "TGCCGATCGTAATAGCTCGCTATCTAGCTCGATCGTCGTA";

#Returns the length in characters of the value of EXPR
my $dna_length1 = length $dna_seq1;
my $dna_length2 = length $dna_seq2;

print "The length of first DNA sequence ($dna_seq1) is: $dna_length1\n";
print "The length of the Second DNA sequence ($dna_seq2) is: $dna_length2\n\n";

#calculate the total length of two DNA sequences
my $tot_length = $dna_length1 + $dna_length2;
print "The total length of two DNA sequences is $tot_length \n";

#calulate the differences between the two DNA sequences
my $diff_length = $dna_length2 - $dna_length1;
print "The length difference of two DNA sequences is ", $diff_length, "\n";


