#!/usr/bin/perl
use warnings;
use strict;

my ($fasta, $out_len) = @ARGV; 

open FASTA, $fasta or die "Can't open file for reading: $! $fasta";
open OUT, "+>$out_len" or die "Can't open file for writing: $! $out_len";
# Set the input record separator
$/ = "\n>";
# Print header
print OUT "The input file name is: $fasta\n";
print OUT "Chrom\tLength\n";
while(my $chunk = <FASTA>){
    # Remove > in the first chunk
    $chunk =~ s/^>//;
	# Remove \n> from the end of the chunk
	chomp $chunk;
    # Assign ID and seq to two variables
    my ($chrom, $seq) = split(/\n/, $chunk, 2);
    # Remove \n in the string
    $seq =~ s/\n//g;
    # Calculate the length of sequence.
    my $seq_length = length $seq;
    # Print ID and length of the sequence.
	print OUT "$chrom\t$seq_length\n";
}
close FASTA;
close OUT;