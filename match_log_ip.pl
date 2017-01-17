#!/usr/local/bin/perl

$userFile = $ARGV[0];
$logFile = $ARGV[1];
$col = $ARGV[2];

open(IN,$userFile);
%ip = ();
@tmp = ();
while(<IN>){
	chomp;
	@tmp = split(/\t/,$_);
	$ip{$tmp[0]} = "$tmp[0] $tmp[1] $tmp[2]";
}
close(IN);

@tmp = ();
open(IN,$logFile);
while(<IN>){
	chomp;
	$_=~ s/ +/ /g;
	@tarr = split(/\t/,$_);
	$line = shift(@tarr);
	@tmp = split(/ /,$line);
	print "$_";
	#print "$ip{$tmp[2]}";
	$addr = $tmp[$col-1];
	$addr =~ s/\"//g;
	#print "\t<="."$col"."= ";
	print "\t<="."$addr"."|";
	#print "$ip{$tmp[$col-1]}";
	print "$ip{$addr}=>";
	print "\n";
}
close(IN);
