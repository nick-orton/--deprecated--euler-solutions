(Problem 6)[http://projecteuler.net/index.php?section=problems&id=6]

problem
-------
TODO: Copy problem text here

> module Problem006 where

solution
--------

> f :: [Integer] -> Integer
> f xs = ((sum xs)^2) - (sum (map (^2) xs)) 

> test_example = f [1..10] == 2640
> ns = [1..100]
> answer = f ns
