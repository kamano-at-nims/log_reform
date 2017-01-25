#!/usr/local/bin/perl

while(<>){
	chomp;
	if($_ =~ /(<=[0-9\.]+\|[^=>]+=>)/){
		print "$_"." U","\n";
	}else{
		print "$_"." u"."\n";
	}
}
