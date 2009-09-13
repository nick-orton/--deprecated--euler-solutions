(Problem 2)[http://projecteuler.net/index.php?section=problems&id=2]

problem
-------

Find the sum of all the even-valued terms in the sequence which do not exceed 
four million.

> module Problem002 where
> import Lib.Numz(fibs)
> import Lib.Lizt(selectUntil)

solution
--------

> evenFibsUnder4mil = filter even (selectUntil (>=4000000) fibs)
> testProblem002 = sum evenFibsUnder4mil == 4613732			 


