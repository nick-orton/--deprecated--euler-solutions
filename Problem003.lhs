(Problem 3)[http://projecteuler.net/index.php?section=problems&id=3]

problem
-------

What is the largest prime factor of the number 600851475143 ?

> module Problem003 where

solution
--------

using the largest prime factor method from Lib.Primes

> import Lib.Primes(lgstPfac)

> answerProblem003 = lgstPfac 600851475143 			 
> testProblem003 = answerProblem003 == 6857
