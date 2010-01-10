(Problem 007)[http://projecteuler.net/index.php?section=problems&id=007]

problem
-------
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, 
we can see that the 6^(th) prime is 13.
What is the 10001st prime number?

> module Problem007 where
> import Lib.Primes

solution
--------

> answerProblem007 = primes !! 10000 
> testProblem007 = answerProblem007 == 104743
