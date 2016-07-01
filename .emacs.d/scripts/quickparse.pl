use strict;
use warnings;
use feature qw(say);

my $filename = "before\ uploading.csv";




open my $warrickDepartments, '<', $filename or die;

my $counter = 0;
while( my $line = <$warrickDepartments>)  {

    my @total = (split /,/, $line);
    if(scalar @total != 23){
	$counter++;
	say $line;
#	say scalar split( /,/, $line);
    }

    #if(my $line2 = $line =~ /GetColumnValue\(EmployeeDemographicsColumns\./i){
#	my @total = (split / /, $line);
	#my $second = $total[1];
	#say "LogValue(\"" . $second . "\", " . $second .");"; 
    #}
}
say $counter;

close $warrickDepartments;


