#!/usr/bin/perl
use warnings;
use strict;

my @fib;
&calculateFibonacci();
&calculateSumOfEvens();

sub calculateFibonacci()
{
    my $back1 = 1;
    my $back2 = 0;

    for (my $i = 0; $i < 4000000; $i++)
    {
        if ($i == ($back1 + $back2))
        {
            push(@fib, $i);
            $back2 = $back1;
            $back1 = $i;
        }
    }
    print("@fib\n");
}

sub calculateSumOfEvens()
{
    my $sum = 0;
    foreach(@fib)
    {
        if ($_ % 2 == 0)
        {
            $sum += $_;
        }
    }
    print("Sum: $sum\n");
}
