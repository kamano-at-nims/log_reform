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
	$url{$_} = "J";
}
close(IN);

open(IN,$accessF);
while(<IN>){
	chomp;
	@line = split(/ \| /,$_);
	$ur = $line[2];
	$ur =~ s/^\s*//;
	$ur =~ s/\s*$//;
	$ur =~ s/^[a-z]+:\/\///;
	$ur =~ s/\/+.+$//;
	$ur =~ s/\/$//;
	$ip = $line[0];
	$ip =~ s/^\s+//;
	$ip =~ s/\s+$//;
	$meth = $line[1];
	$meth =~ s/^\s+//;
	$meth =~ s/\s+$//;
	print "$ip \| $meth \| $ur $url{$ur}\n";
}
close(IN);
