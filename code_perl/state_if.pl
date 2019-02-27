#!/usr/bin/perl
use warnings;
use strict;

my @gene_exp_lev = (1, 5, 3, 4, 9, 10);

# for (my $i = 0; $i < @gene_exp_lev; $i++) {
for (my $i = 0; $i < scalar @gene_exp_lev; $i++) {
	if ($gene_exp_lev[$i] > 4) {
		print "Index $i: $gene_exp_lev[$i]\n";
	}
}