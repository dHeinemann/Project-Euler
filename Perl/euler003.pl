#!/usr/bin/perl
use warnings;
use strict;

my $answer = &calculateSquareOfSums - &calculateSumOfSquares;
print("Final answer: $answer\n");

sub calculateSumOfSquares()
{
    my $runningTotal = 0;
    for (my $i = 1; $i <= 100; $i++)
    {
        $runningTotal += $i ** 2;
    }
    print("Sum of squares: $runningTotal\n");
    return $runningTotal;
}

sub calculateSquareOfSums()
{
    my $runningTotal = 0;
    for (my $i = 1; $i <= 100; $i++)
    {
        $runningTotal += $i;
    }
    my $total = $runningTotal ** 2;
    print("Square of sums: $total\n");
    return $total;
}
