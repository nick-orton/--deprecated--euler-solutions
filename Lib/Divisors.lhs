Divisors
========

> module Lib.Divisors
> where
> import Lib.Lizt
> import List

Divisor
------

simple test to see if the first argument is a divisor of the second.
we have syntactic sugar infix operator for this: <. 

> isFacOf :: Integer -> Integer -> Bool
> isFacOf k n = rem n k == 0
> (<.) x y = isFacOf x y

test: assert that 1 divides 4, 6 divides 42 and 13 is not a divisor of 55

> testisFacOf = (1 <. 4) && (6 <. 42) && not(13 <. 55)

Divisors
--------

All divisors of of a number.  We find the first half of the list by examining 
all natural numbers between 1 and the square root of n.  We get the second half 
by finding the quotients of n and the first half of the list. 

> divisors :: Integer -> [Integer]
> divisors x = nub((smDivisors) ++ reverse (lgDivisors (smDivisors)))
>   where 
>   smDivisors = [y| y <- [1..(floor (sqrt (fromInteger x)))], (y <. x)]
>   lgDivisors [] = []
>   lgDivisors (d:ds) = (quot x d) : lgDivisors ds 

> testdivisors = ((divisors 60) == [1,2,3,4,5,6,10,12,15,20,30,60])
>                && ((divisors 4) == [1,2,4])

The proper divisors of a number are all the divisors of that number excluding
itself

> properDivs :: Integer -> [Integer]
> properDivs n = delete n (divisors n)
> testproperDivs = properDivs 60 == [1,2,3,4,5,6,10,12,15,20,30]

Lowest Divisor
--------------

Given an integer, the following returns the lowest non-trivial divisor.
This will, however, return the input if it is a prime number.
This takes advantage of the fact that if a number is not prime, its lowest 
divisor is less than the square root of that number

> ld ::Integer -> Integer
> ld x = ld' 2
>      where
>      ld' :: Integer -> Integer
>      ld' c | c <. x = c
>            | c^2 > x = x
>            | otherwise = ld' (c+1)
            
test: the lowest non-trivial divisor of 9 is 3 and 4 is 2
            
> testld = (ld 9 == 3) && (ld 4 == 2)

Perfect Numbers
---------------
A perfect number is a number for which the sum of its proper divisors is 
exactly equal to the number. For example, the sum of the proper divisors of 28 
would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.

> sumDivs n = sum(properDivs n)

> isPerfect :: Integer -> Bool
> isPerfect n = sumDivs n == n

> testPerfect = isPerfect 28

A number n is called deficient if the sum of its proper divisors is less than n
and it is called abundant if this sum exceeds n

> isDeficient :: Integer -> Bool
> isDeficient n = sumDivs n < n

> isAbundant :: Integer -> Bool
> isAbundant n = sumDivs n > n

> testIsAbundant = isAbundant 12
> testIsDeficient = isDeficient 9

Amicable Numbers
----------------

[amicable numbers](http://en.wikipedia.org/wiki/Amicable_number) are two 
different numbers so related that the sum of the proper divisors of one of the 
numbers is equal to the other.  A pair of amicable numbers constitutes an 
aliquot sequence of period 2. 

> hasAmicablePair x = x == sumDivs (sumDivs x) && (x /= sumDivs x)

For example, the smallest pair of amicable numbers is (220, 284); 
for the proper divisors of 220 are [1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110], 
of which the sum is 284; and the proper divisors of 284 are 
[1, 2, 4, 71, and 142], of which the sum is 220.

> testhasAmicablePair = hasAmicablePair 220  && hasAmicablePair 284

A related concept is that 
of a perfect number, which is a number which equals the sum of its own proper 
divisors, in other words a number which forms an aliquot sequence of period 1.

module test
-----------

> testModule = testhasAmicablePair 
>                && testproperDivs 
>                && testld 
>                && testdivisors 
>                && testisFacOf 
>                && testPerfect 
>                && testIsDeficient
>                && testIsAbundant
