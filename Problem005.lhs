(Problem 5)[http://projecteuler.net/index.php?section=problems&id=5]

> module Problem005 where
> import Lib.Divisors
> import Lib.Lizt

Problem
-------

What is the smallest number that is evenly divisible by all of the numbers from 
1 to 20?  

> ns = [1..20]

Solution
--------
This is a matter of finding the least common multiple of all the numbers. 

> answerProblem005 = lcms ns 			

The least common multiple of a list of numbers can be found by recursing over 
the list.

> lcms :: [Integer] -> Integer
> lcms (x:xs) = lcm' x xs
>    where 
>    lcm' a [] = a
>    lcm' a (x:xs) = lcm' (lcm a x) xs

> testProblem005 = answerProblem005 ==  232792560