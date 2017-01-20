#!/usr/local/bin/perl

while(<>){
	chomp;
	$_ =~ s/ +/ /g;
	@linarr = split(/ /,$_);
	$time = shift(@linarr);
	$msec = shift(@linarr);
	$time = `date -j -f "%d/%b/%Y:%T" \"$time\" "+%s"`;
	chomp($time);
	$msec =~ s/^.+\.//;
	$out = join(" ",@linarr);
	print "$time.$msec $out\n";
}
