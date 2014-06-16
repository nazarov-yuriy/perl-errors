package TestLib;
use strict;
use warnings;

our $VERSION = '1.00';
use base 'Exporter';
our @EXPORT = qw(testDefined);

sub testDefined(){
	print "testDefined";
}

1;