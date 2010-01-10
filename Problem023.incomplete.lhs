(Problem 23)[http://projecteuler.net/index.php?section=problems&id=23]

problem
-------
As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest 
number that can be written as the sum of two abundant numbers is 24. 
By mathematical analysis, it can be shown that all integers greater than 28123 
can be written as the sum of two abundant numbers. However, this upper limit 
cannot be reduced any further by analysis even though it is known that the 
greatest number that cannot be expressed as the sum of two abundant numbers is 
less than this limit.

Find the sum of all the positive integers which cannot be written as the sum of
two abundant numbers.

> module Problem029 where
> import Lib.Divisors
> import List

solution
--------

> smallest = 28123
> domain = [0..smallest]
> abundants = filter isAbundant domain
> sumOf2Abundants = nub([(a+b) | a <- abundants, b <- abundants, 
>                                a+b <= smallest])
> notSum2Abundants = domain \\ sumOf2Abundants 

> answerProblem23 = sum notSum2Abundants
> testProblem23 = 0 == answerProblem23
