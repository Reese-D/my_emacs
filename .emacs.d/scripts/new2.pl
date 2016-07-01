use strict;
use warnings;
use feature qw(say);

my $filename = "warrickDepartments.txt";
my $filename2 = "values.txt";



open my $warrickDepartments, '<', $filename or die;

my $counter = 0;
while( my $line = <$warrickDepartments>)  {

    my @total = (split /,/, $line);
    my $first = $total[0];
    my $second = $total[1];
    #chomp($second);
   # chomp $second;
    print $second;
    
    ###print $second;

    open my $values, '<', $filename2 or die;
    while( my $line2 = <$values>){
	if($line2 =~ s/$first/$second/i){
	    #print $line2;
	}
    }
    close $values;
}

close $warrickDepartments;


