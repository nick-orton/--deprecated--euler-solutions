(Problem1)[http://projecteuler.net/index.php?section=problems&id=1]

problem
-------

Find the sum of all the multiples of 3 or 5 below 1000.

> module Project001 where
> import Lib.Divisors
> import Lib.Lizt

solution
--------

This uses thed <. operator to
mean "divides".  This is found in Lib.Divisors.

> answer = sum(select divides3or5 [0..999])  
>    where 
>    divides3or5 x = (3 <. x) || (5 <. x)

> testProblem001 = answer == 233168
