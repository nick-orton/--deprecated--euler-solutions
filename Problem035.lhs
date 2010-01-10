(Problem 35)[http://projecteuler.net/index.php?section=problems&id=35]

problem
-------
put problem text here
The number, 197, is called a circular prime because all rotations of the 
digits: 197, 971, and 719, are themselves prime.

There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 
73, 79, and 97.

How many circular primes are there below one million?

> module Problem035 where
> import Lib.Decimal
> import Lib.Primes
> import Lib.Lizt

solution
--------

> rotations :: [Int] -> [[Int]]
> rotations l = nextRot l (length l)
>     where
>         nextRot l 0 = []
>         nextRot l n = (rotate l) : nextRot (rotate l) (n-1)
>             where rotate (h:t) = t ++ [h]

> circleNum :: Integer -> [Integer]
> circleNum n = (map fromDigits (rotations (toDigits n)))

> testCircleNum = ([2] == circleNum 2)
>                 && (circleNum 14 == [41, 14])


> answerProblem35 = length (filter (\x -> all isPrime (circleNum x)) 
>                        (selectUntil (>1000000) primes))

> testProblem35 = 55 == answerProblem35
