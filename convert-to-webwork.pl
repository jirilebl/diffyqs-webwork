#!/usr/bin/perl
use strict;
use warnings;
 
my $file = $ARGV[0] or die "Need to get CSV file on the command line\n";
 
my $sum = 0;
open(my $data, '<', $file) or die "Could not open '$file' $!\n";
 
<$data>;

while (my $line = <$data>) {
  chomp $line;
 
  $line =~ s/#//g;
  my @fields = split (/,/ , $line);

  #student_id last_name first_name status comment section recitation email_address user_id password permission
  print $fields[0] . "," . #student_id
        $fields[2] . "," . #last_name
        $fields[3] . "," . #first_name
        "c," . #status
        "," . #comment
        "," . #section
        "," . #recitation
        $fields[4] . "," . #email
        $fields[1] . "," . #user_id
        "," . #password
        "\n";  #permission
}
