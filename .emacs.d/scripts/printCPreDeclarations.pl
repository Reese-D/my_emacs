strict; use warnings;
my @list;
my $filename = shift;
if (open(my $fh, '<:encoding(UTF-8)', $filename)) {
  while (my $row = <$fh>) {
    if($row =~ /\(.*\)\s?{/){
      if( $row !~ /for|if/){
        $row =~ s/{/;/;
        $row =~ s/^\s*//;
        print $row;
      }
    }
  }
} else {
  print "shit hit the fan\n";
  warn "Could not open file '$filename' $!";
}
