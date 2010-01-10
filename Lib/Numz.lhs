Numz
====

> module Lib.Numz where


Natural Numbers
---------------

the Natural numbers (ℕ) is the set of all counting integers: {1,2,3,...}

> nats = [1..]

A number is natural if we drop the fractional component without a change in 
value
 
> isNat :: (RealFrac a) => a -> Bool 
> isNat x =  x == fromInteger (floor x)
> testisNat = isNat 25 && not (isNat 25.1)

Square Numbers
--------------
a number is a square if its square root is a whole number

> isSqr :: (Floating a, RealFrac a) => a -> Bool
> isSqr x = isNat (sqrt x)
> testisSqr = isSqr 25 && not (isSqr 10)

Factorials
----------
the factorial of a non-negative integer n, denoted by n!, is the product of all 
positive integers less than or equal to n

> (!) :: Integer -> Integer
> (!) 1 = 1
> (!) n = n* (!)(n-1)

for example:  5! = 5 x 4 x 3 x 2 x 1 = 120

> testfactorial = (5 !) == 120

Fibinacci Series
--------------

> fib :: [Integer] -> [Integer]
> fib (y:z:xs) = y+z : fib (y+z:y:z:xs)

> fibs = fib [0,1]
> testfib = take 7 fibs == [1,1,2,3,5,8,13]

module test
-----------

> testNumz = testisNat && testisSqr && testfib 
