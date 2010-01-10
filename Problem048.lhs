(Problem 48)[http://projecteuler.net/index.php?section=problems&id=48]

problem
-------
The series, 11 + 22 + 33 + ... + 1010 = 10405071317.

Find the last ten digits of the series, 11 + 22 + 33 + ... + 10001000.

> module Problem048 where
> import Lib.Decimal

solution
--------

> series = map (\x -> (x ^ x)) [1..1000]
> sumOfSeries = sum series
> answerProblem48 = sumOfSeries `mod` 10^10 
> testProblem48 = 9110846700 == answerProblem48
