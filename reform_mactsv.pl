#!/usr/local/bin/perl

sub _padding{
        @sarr = split(/:/,$_[0]);
        @oarr = ();
        foreach(@sarr){
                if(length($_) > 1){
                        $n = $_;
                }else{
                        $n = "0"."$_";
                }
                push(@oarr,$n);
        }
        return join(":",@oarr);
}


while(<>){
	chomp;
	@arr = split(/\t/,$_);
	$mac = shift(@arr);
	$mac =~ s/\"//g;
	$mac =~ s/-/:/g;
	$mac =~ tr/A-Z/a-z/;
	$mac = &_padding($mac);
	$str = join("	",@arr);
	print "$mac\t$str\n";
}
