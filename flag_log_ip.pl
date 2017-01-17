#!/usr/local/bin/perl

$iplist = $ARGV[0];
$log = $ARGV[1];
$flag = $ARGV[2];

open(IN,$iplist);
while(<IN>){
	chomp;
	push(@iparr,$_);
}
close(IN);

open(IN,$log);
while(<IN>){
	chomp;
	@line = split(/\t/,$_);
	$src1 = $line[1];
	$src1 =~ s/^<=//;
	$src1 =~ s/\|.+$//;
	$src2 = $line[2];
	$src2 =~ s/^<=//;
	$src2 =~ s/\|.+$//;
	@src=($src1,$src2);
	$count = 0;
	foreach(@src){
		#if($count > 0){last;}
		$s = $_;
		foreach(@iparr){
			if($s =~ /$_/){
				$count++;
				#last;
			}
		}
	}
	print "$_";
	if($count > 0){
		print $flag;
	}
	print "\n";
}
close(IN);
