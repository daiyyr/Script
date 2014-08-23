#!/usr/bin/env perl
# program: find specific text in a file, and replace the keyword by incremental number from 1.
#			Specially, if one line contains more than one key number, they will be replaced with a same number.
# Made by:  Daiyyr
# date:  2013/05/13
use 5.10.1;
use strict;
use warnings;
use POSIX qw(strftime);


my $requiredArgv = 2;
my $optionalArgv = 1;

my $key;
my $fname;
my $everChanged = 0;

sub replace{
	my $count = 1;
	my $changed = 0;
	while(my $line=<FILE>){
		if($key eq $count && $line =~ s/$key/eruandlucyliveahappylifeeverafter/){	# Special circumstances£¬nochanged will cause "= ~ s//" statement returning 0
			$count++;
			while($line =~ s/$key/$count/ ){
				$count++;
			}
			$line =~ s/eruandlucyliveahappylifeeverafter/$key/ ;
			print DEST $line;
			print $line;
			next;
		}
		while($line =~ s/$key/$count/ ){	# Here "if" will not work when one line contain multiple keys, since "=~ s//" only replace the first one
			$changed = 1;
			$count++;
		}
		if($changed){
			if(!$everChanged){
				$everChanged++;
			}
			print DEST $line;
			print $line;
		}else{
			print DEST $line;
		}
		$changed = 0;
	}
}

sub wrongArgv{
	die("Unknown argument!\nUse \"NumReplace.pl [FileName] [Keyword]\" to replace the keyword by incremental number from 1.\nargument -s will disable screen print\n");
}


#put Optional Argument Variables at last.
#return
#	the number of Arguments	for legal ;
#	-1 						for illegal;
sub operateArgv{
	if(scalar @ARGV > $optionalArgv + $requiredArgv || scalar @ARGV <= $requiredArgv){
		return scalar @ARGV;
	}

	my @temp = (0) x (scalar @ARGV);
	my $option = 0;
	my $i = 0;
	my $j = 0;
	for($i=0; $i < scalar @ARGV; $i++){
		if (substr($ARGV[$i],0,1) eq "-"){
			$temp[$i]=1;
			$option++;
		}
	}
	if($option > $optionalArgv || $option < (scalar @ARGV)-$requiredArgv ){
		return -1;
	}
	for($i=0; $i < (scalar @ARGV)-1; $i++){
		if ($temp[$i]==1){
			my $temp2 = $ARGV[$i];
			for($j = $i; $j < (scalar @ARGV)-1; $j++){
				$ARGV[$j] = $ARGV[$j + 1];
			}
			$ARGV[(scalar @ARGV)-1] = $temp2;
		}
	}
	return scalar @ARGV;
}

#========== main begin =======================================
my $argNo = operateArgv();

if($argNo == 0){
	print "input your file name:\n";
	$fname = <STDIN>;
	chomp($fname);
	print "input your key word number:\n";
	$key = <STDIN>;
}
else{
	if($argNo >= $requiredArgv && $argNo <= $requiredArgv+$optionalArgv ){
		$fname = $ARGV[0];
		$key = $ARGV[1];
		if($argNo == 3){
			if(!($ARGV[2] eq "-s")){
				wrongArgv();
			}
			else{
				#do something for '-s' argv
			}
		}
	}
	else{
		wrongArgv();
	}
}

chomp($key);
open(FILE, "+<$fname") || die("Can not find file: $fname\n");
open(DEST, ">${fname}_changed") || die("ERROR:open file failed: ${fname}_changed\n");
&replace();
close(FILE) || die("Error:close file failed: $fname\n");
close(DEST) || die("ERROR:close file failed: ${fname}_changed\n");

if($everChanged){
	print "\n\n##############################\n";
	print "result in ${fname}_changed\n";
	print "##############################\n\n";
}
else{
	print "Can't find the keyword: ${key}, Nothing changed!\n";
	unlink "${fname}_changed" || die "ERROR:delete file failed: ${fname}_changed";
}
