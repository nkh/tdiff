use strict ; use warnings ;

my ($header, $DIFF, $diffs, $DELETED, $deleted, $ONLY, $only, $tree) = @ARGV ;

open(my $fh, $diffs)  ; my %diffs   = ( map { chomp ; "$_" => 1 } <$fh> ) ;
open    $fh, $deleted ; my %deleted = ( map { chomp ; "$_" => 1 } <$fh> ) ;
open    $fh, $only    ; my %only    = ( map { chomp ; "$_" => 1 } <$fh> ) ;

open(my $diff_index, ">&=", 3) or die ;
open(my $deleted_index, ">&=", 4) or die ;

open $fh, $tree ;

<$fh> ; print "$header\n" ; 

$. = 0 ;

while(<$fh>)
	{
	chomp ; m~^(.*\dm)  ./  ((?:[^/]*/)*)   (.+)   (\e\[0m)~x ;
	
	my $dir = $2 // '' ; 
	
	if   (exists $diffs{"$dir$3"})   { print "$DIFF$1$DIFF$3\n" ; print $diff_index "$.\n" ; }
	elsif(exists $deleted{"$dir$3"}) { print "$DELETED$1$DELETED$3\n" ; print $deleted_index "$.\n" ; }
	elsif(exists $only{"$dir$3"})    { print "$ONLY$1$ONLY$3\n" ; }
	else                             { print "$1$3\n" ; }
	}

