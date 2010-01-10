(Problem 10)[http://projecteuler.net/index.php?section=problems&id=10]

problem
-------
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
Find the sum of all the primes below two million.

> module Problem010 where
> import Lib.Primes
> import Lib.Lizt

solution
--------

> primesBelow :: Integer -> [Integer]
> primesBelow x = selectUntil (>=x) primes

> testPrimesBelow = sum (primesBelow 10) == 17

> answerProblem10 = sum(primesBelow 2000000)
> testProblem10 = 142913828922 == answerProblem10
