[Problem20](http://projecteuler.net/index.php?section=problems&id=20)

n! means n × (n − 1) × ... × 3 × 2 × 1
Find the sum of the digits in the number 100!

> module Problem020 where
> import Lib.Numz
> import Lib.Decimal

> answer = sum ( toDigits ( 100 !) )

> testProblem020 = answer == 648