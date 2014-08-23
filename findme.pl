#!/usr/bin/env perl
# program: find specific text in files with specific names
# Made by:  Daiyyr
# date:  2013/03/14
use 5.10.1;
use strict;
use warnings;
use POSIX qw(strftime);


my $key;
my $fname;

sub find{
	my @dirs = <$_[0]/*>;
	my $count = @dirs;
	my $len = length($_[0]);
	if($count == 0){
		return 1;
	}
	my $i=0;
	while($i<$count){
	    if(-d $dirs[$i]){
	    		&find("$dirs[$i]", $_[1]);
	    }
	    else{
		    	if(substr($dirs[$i],$len+1) =~ m/$_[1]/){
		    		if( substr($dirs[$i],$len+1) eq "log_finding_${key}_in_${fname}"){
					$i++;
		    			next;
		    		}
				open(FILE, $dirs[$i]) || die("open file failed: $dirs[$i]\n");
				while(my $line=<FILE>){
					if($line =~ m/$key/ && $line !~ m/\/\/.*$key|\/\*.*$key|$key.*\*\//){
						print("$dirs[$i] : $. : $line");
						print LOG ("$dirs[$i] : $. : $line");
					}
				}
				close(FILE) || die("close file failed: $dirs[$i]\n");#猜测若不显式地关闭，一样要自动地隐式关闭，并不能节省时间
			}
	    }
	    $i++;
	}#end of while
}

print "input your files' name(could be regex):\n";
$fname = <STDIN>;
chomp($fname);
print "input your key word(could be regex):\n";
$key = <STDIN>;
chomp($key);
open(LOG, ">log_finding_${key}_in_${fname}") || die("open file failed: log_finding_${key}_in_${fname}\n");

print LOG ("search time: ".strftime("%Y-%m-%d %H:%M:%S\n", localtime(time))."key words:${key},  file name:${fname},  path:$ENV{'PWD'}\n\n");
&find(".", $fname);
close(LOG) || die("close file failed: log_finding_${key}_in_${fname}\n");

