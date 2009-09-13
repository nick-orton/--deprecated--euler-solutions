[Problem16(http://projecteuler.net/index.php?section=problems&id=16)

> module Problem016 where
> import Lib.Decimal

2^(15) = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

What is the sum of the digits of the number 2^(1000)?

> answer = sum (toDigits(2^1000))

> testProblem016 = answer == 1366