#!/usr/bin/perl
use strict;
use warnings;
use v5.14;

$_ = "[hello]";
open my $fh, ">&STDOUT";
sub sync($) {
    STDOUT->flush();
    STDERR->flush();
    $fh->flush();
    print "\nAfter @_\n\n";
}

print STDOUT "[hello]";
say STDOUT "[hello]";
printf STDOUT "[hello]";
sync("FILEHANDLE LIST varian");

print STDERR;
say STDERR;
printf STDERR;
sync("FILEHANDLE varian");

print $fh;
say $fh;
printf $fh;
sync("FILEHANDLE varian with lexical filehandles");

print $fh $_;
say $fh $_;
printf $fh $_;
sync("FILEHANDLE LIST varian with lexical filehandles");

print UNDEFINED "hello";
say UNDEFINED "hello";
printf UNDEFINED "hello";
sync("FILEHANDLE LIST varian with undefined filehandles");
