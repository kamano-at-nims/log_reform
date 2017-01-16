#!/usr/local/bin/perl

while(<>){
	#$_ =~ s/^\s+//;
	#$_ =~ s/\s+$//;
	#$_ =~ s/$/\n/;
	if($_ =~ /([0-9a-fA-F])(:[0-9a-fA-F][0-9a-fA-F]){5}/){
		$_ =~ s/(:[0-9a-fA-F][0-9a-fA-F]){3}$//;
		print $_;
	}
}
