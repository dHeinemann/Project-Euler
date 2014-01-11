#!/usr/bin/perl
use warnings;
use strict;
use List::Util qw(sum);

my $sum = sum(grep { $_ % 2 == 0 } &calculateFibonacci(4000000));
print("Sum: $sum\n");

sub calculateFibonacci()
{
    my @fib;
    my $back1 = 1;
    my $back2 = 0;

    for (my $i = 0; $i < $_[0]; $i++)
    {
        if ($i == ($back1 + $back2))
        {
            push(@fib, $i);
            $back2 = $back1;
            $back1 = $i;
        }
    }

    return @fib;
}
