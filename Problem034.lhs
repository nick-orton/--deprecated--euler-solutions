(Problem 34)[http://projecteuler.net/index.php?section=problems&id=34]

problem
-------
145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.

Find the sum of all numbers which are equal to the sum of the factorial of 
their digits.

Note: as 1! = 1 and 2! = 2 are not sums they are not included.


> module Problem034 where
> import Lib.Decimal
> import Lib.Numz

solution
--------

> domain = [3..2540160]
> isEqSumFac n = sum(map (!) (toDigits n)) == fromInteger n 

> testIsEqSumFac = (isEqSumFac 145) 
>                  && not(isEqSumFac 146)

> answerProblem34 = sum(filter isEqSumFac domain) 

> testProblem34 = 40730 == answerProblem34
