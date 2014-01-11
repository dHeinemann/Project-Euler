#!/usr/bin/perl
use warnings;
use strict;

my $numberToTest = 1;
my $totalFactors = 0;
while ($totalFactors <= 10001)
{
    &checkIfFactor($numberToTest);
    $numberToTest++;
}

sub checkIfFactor()
{
    my $divisions = 0; #Number of numbers that $number is divisible by
    for (my $i = 1; $i <= $_[0]; $i++)
    {
        if ($_[0] % $i == 0)
        {
            $divisions++;
        }
    }

    if ($divisions > 2)
    {
        #print("$_[0] is not prime ($divisions divisions).\n");
    }
    else
    {
        #print("$_[0]\n");
        $totalFactors++;
        print("$totalFactors: $_[0]\n");
        print("Factor $totalFactors: $[0]\n") if ($totalFactors == 10001);
        #print("$_[0] is prime\n");
    }
}
