#!/usr/bin/perl
use warnings;
use strict;

my @matches;
my $sum;
for (my $i = 1; $i < 1000; $i++)
{
    print("Testing $i...\n");
    if ($i % 3 == 0)
    {
        print("  $i is divisible by 3.\n");
        $sum += $i;
        push(@matches, $i);
    }
    elsif ($i % 5 == 0)
    {
        print("  $i is divisible by 5.\n");
        $sum += $i;
        push(@matches, $i);
    }
}
print("\n");
print("Matches: @matches\n\n");
print("Sum: $sum\n");
