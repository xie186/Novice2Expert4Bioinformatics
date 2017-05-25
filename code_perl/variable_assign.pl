#!/usr/bin/perl
use warnings;
use strict;

#assign two strings to two variables
my $dna_seq1 = "ACCTCGGTACAGTGAATGGGAAACGTAGCTGAT";
my $dna_seq2 = "TGCCGATCGTAATAGCTCGCTATCTAGCTCGATCGTCGTA";

#Returns the length in characters of the value of EXPR
my $dna_length1 = length $dna_seq1; 
my $dna_length2 = length $dna_seq2;

print "First DNA: $dna_seq1\n";
print "Second DNA: $dna_seq2\n";

#calculate the total length of two DNA sequences
my $tot_length = $dna_length1 + $dna_length2;
print "The total length of two DNA sequences is $tot_length \n";

# calculate the average length of two DNA sequences. 
my $average_length = ($dna_length1 + $dna_length2) / 2;
print "The average length of two DNA sequences is $average_length \n";

#calulate the differences between the two DNA sequences
my $diff_length = $dna_length2 - $dna_length1;
print "The length difference of two DNA sequences is ", $diff_length, "\n";

#Imaging the CC content of first DNA sequence is 0.5. 
#How many CC do we have in first DNA?
my $cg_content = 0.5;
my $cg_number = $dna_length1 * 0.5;

#Imaging we have a 10 bps DNA sequnces, 
#how many possible DNA sequences do we have?
my $dna_nucleotide = "ATCG";
my $dna_nucleo_number = length $dna_nucleotide;
my $dna_length = 10;
my $possible_number = $dna_nucleo_number ** $dna_length;
print "We have $possible_number possibilities.\n";