[Problem21](http://projecteuler.net/index.php?section=problems&id=21)

Evaluate the sum of all the amicable numbers under 10000.

> module Problem021 where
> import Lib.Divisors
> import Lib.Lizt

> answer = sum (filter hasAmicablePair [1..10000])

> testProblem21 = answer == 31626
