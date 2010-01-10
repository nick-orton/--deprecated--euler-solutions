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
> last10Digits = reverse (take 10 (reverse (toDigits sumOfSeries)))
> answerProblem48 = last10Digits
> testProblem48 = [9,1,1,0,8,4,6,7,0,0] == answerProblem48
