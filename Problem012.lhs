[Problem 12](http://projecteuler.net/index.php?section=problems&id=12)

What is the value of the first triangle number to have over five hundred 
divisors?

> module Problem12 where
> import Lib.Primes
> import Lib.Lizt
> import Lib.Numz
> import Lib.Divisors

We can see that 28 is the first triangle number to have over five divisors.

> fstTriWithDivsNumbering :: Int -> Integer
> fstTriWithDivsNumbering n = fstMatch (\x -> length(divisors x) > n) tris

> testHghCompositTri = fstTriWithDivsNumbering 5 == 28

> answer = fstTriWithDivsNumbering 500   

> testProblem012 = answer == 76576500

this method does not complete under a minute
