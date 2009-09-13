--The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
--Find the sum of all the primes below two million.
module Problem010 where
import Lib.Primes


test_example = sum (primes_below 10) == 17

primes_below :: Integer -> [Integer]
primes_below x = select_while (<x) primes

select_while :: (a -> Bool) -> [a] -> [a]
select_while f [] = []
select_while f (x:xs)	| f x = x:select_while f xs
						| otherwise = []
						
						
answer = sum(primes_below 2000000)
