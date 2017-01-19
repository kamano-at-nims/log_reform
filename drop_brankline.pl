#!/usr/local/bin/perl

while(<>){
	#print $_;
	chomp;
	if($_ =~ /^\s*$/){
		#print "[$1]\n";
	}else{
		print "$_\n";
	}
}
