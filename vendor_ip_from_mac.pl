#!/usr/local/bin/perl
#vendor_ip_from_mac.pl

$mac = $ARGV[0];
$arp = $ARGV[1];

open(IN,$mac);
while(<IN>){
	chomp;
	push(@marr,$_);
}
close(IN);

open(IN,$arp);
while(<IN>){
	chomp;
	@tmp = split(/ /,$_);
	$ipaddr = $tmp[0];
	$tgt = $tmp[2];
	$count = 0;
	foreach(@marr){
		#print "$tgt $_\n";
		if($tgt =~ /^$_/){
			$count++;
			last;
		}
	}
	if($count > 0){
		print "$ipaddr\n";
	}
}
close(IN);
