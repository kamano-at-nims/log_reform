#!/usr/local/bin/perl

$ctime = $ARGV[0];
$sec = $ARGV[1];
$log = $ARGV[2];

open(IN,$log);
while(<IN>){
	$_ =~ /([0-9\.]+) /;
	$rtime = $1;
	$ptime = $ctime-$sec;
	if($ctime >= $rtime && $rtime > $ptime){
		#print "$ptime $ctime $_";
		print "$_";
	}
}
close(IN);
