(Problem 009)[http://projecteuler.net/index.php?section=problems&id=009]

problem
-------
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
a^(2) + b^(2) = c^(2)
For example, 3^(2) + 4^(2) = 9 + 16 = 25 = 5^(2).
There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.

> module Problem009 where
> import Lib.Lizt

solution
--------

> pyTrips = [(a,b,c) | c <- [5..], a <- [4..c], b <- [3..a], (a^2) + (b^2) == (c^2)]

> sumsTo1000 :: (Int, Int, Int) -> Bool
> sumsTo1000 (a,b,c) = (a + b + c) == 1000

> answerProblem009 = a*b*c where (a,b,c) = fstMatch sumsTo1000 pyTrips 
> testProblem009 = answerProblem009 == 31875000
