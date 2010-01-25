(Problem 40)[http://projecteuler.net/index.php?section=problems&id=40]

problem
-------

An irrational decimal fraction is created by concatenating the positive 
integers:

0.123456789101112131415161718192021...

It can be seen that the 12th digit of the fractional part is 1.

If dn represents the nth digit of the fractional part, find the value of the 
following expression.

d1  d10  d100  d1000  d10000  d100000  d1000000

> module Problem040 where
> import Lib.Decimal 
> import Lib.Numz 

solution
--------

> f (n:ns) = (toDigits n) ++ (f ns)
> d n = last ( take n (f nats))

> answerProblem40 = (d 1) * (d 10) * (d 100) * (d 1000) 
>                    * (d 10000) * (d 100000) * (d 1000000)
> testProblem40 = 210 == answerProblem40
