
#!/usr/bin/perl
use strict;
use warnings;

my ($infile, $cutoff) = @ARGV;

open IN, $infile or die "$!";
while(<IN>){
	chomp;
	my @part = $_ =~ /(.{1,$cutoff})/g;
	foreach my $part(@part){
	    print "$part\n";
	}
}
