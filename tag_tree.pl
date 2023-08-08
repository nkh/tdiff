use strict ; use warnings ;

my ($header, $DIFF, $DELETED, $diffs, $deleted, $tree) = @ARGV ;

open(my $fh, $diffs) ;  my %diffs =   ( map { chomp ; "$_" => 1 } <$fh> ) ;
open    $fh, $deleted ; my %deleted = ( map { chomp ; "$_" => 1 } <$fh> ) ;

open $fh, $tree ;

<$fh> ; print "$header\n" ; 

while(<$fh>)
	{
	chomp ; m~^(.*\dm)  ./  ((?:[^/]*/)*)   (.+)   (\e\[0m)~x ;
	
	my $dir = $2 // '' ; 
	
	if   (exists $diffs{"$dir$3"})   { print "$DIFF$1$DIFF$3\n" ; }
	elsif(exists $deleted{"$dir$3"}) { print "$DELETED$1$DELETED$3\n" ; }
	else                             { print "$1$3\n" ; }
	}
