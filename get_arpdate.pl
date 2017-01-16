#!/usr/local/bin/perl

$count = 0;
while(<>){
	chomp;
	$timestr = $_;
	$count++;
	if($count >= 1){
		last;
	}
}
#print $timestr;
$out = `date -j -f "%a %b %d %T %Z %Y" \"$timestr\" "+%s"`;
print $out;
