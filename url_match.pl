#!/usr/local/bin/perl

$accessF=$ARGV[0];
$whiteF=$ARGV[1];

open(IN,$whiteF);
while(<IN>){
	chomp;
	$= =~ s/^\s*//;
	$= =~ s/\s*$//;
	$_ =~ s/^[a-zA-Z]+:\/\///;
	$_ =~ s/\/+.+$//;
	$_ =~ s/\/$//;
	#print "$_\n";
	$url{$_} = 1;
}
close(IN);

open(IN,$accessF);
while(<IN>){
	chomp;
	$_ =~ s/^\s*//;
	$_ =~ s/\s*$//;
	$_ =~ s/^[a-z]+:\/\///;
	$_ =~ s/\/+.+$//;
	$_ =~ s/\/$//;
	print "$_ $url{$_}\n";
}
close(IN);
