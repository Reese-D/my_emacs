use strict;
use warnings;
use feature qw(say);

my $filename = "Employee_Demographics_LaPorte_20160622013351.csv";




open my $warrickDepartments, '<', $filename or die;


while( my $line = <$warrickDepartments>)  {

    my @total = (split /,/, $line);
    say scalar @total;
    #if(my $line2 = $line =~ /GetColumnValue\(EmployeeDemographicsColumns\./i){
#	my @total = (split / /, $line);
	#my $second = $total[1];
	#say "LogValue(\"" . $second . "\", " . $second .");"; 
    #}
}

close $warrickDepartments;


