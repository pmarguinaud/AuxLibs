#!/usr/bin/perl -w

use strict;
use Data::Dumper;

my %opts;

my $opt;

for my $argv (@ARGV)
  {
    if ($argv eq "--")
      {
        next;
      }
    elsif ($argv =~ m/^--(\w+)$/o)
      {
        $opt = $1;
      }
    else
      {
        die "argv=$argv" unless ($opt);
        push @{ $opts{$opt} }, $argv;
      }
  }

print "#include <stdlib.h>\n\n";

for my $abort (@{ $opts{abort} })
{
  print "void $abort () { abort (); }\n\n";
}

for my $dummy (@{ $opts{dummy} })
{
  print "void $dummy () { }\n\n";
}

