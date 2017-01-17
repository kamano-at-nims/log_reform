#!/usr/local/bin/perl

while(<>){
	chomp;
	$_ =~ /(<=[^=]+([0-9a-f][0-9a-f]:){5}[^=]+=>)/;
	print "$1\n";
}
