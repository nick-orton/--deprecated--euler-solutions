module Problem009 where
--A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
--a^(2) + b^(2) = c^(2)
--For example, 3^(2) + 4^(2) = 9 + 16 = 25 = 5^(2).
--There exists exactly one Pythagorean triplet for which a + b + c = 1000.
--Find the product abc.


pyTrips = [(a,b,c) | c <- [5..], a <- [4..c], b <- [3..a], (a^2) + (b^2) == (c^2)]

first :: [a] -> (a -> Bool) -> a
first (x:xs) f | f(x) = x
               | otherwise = first xs f

test_first = (first [1..10] (==7)) == 7


match = first pyTrips sumsTo1000

sumsTo1000 :: (Int, Int, Int) -> Bool
sumsTo1000 (a,b,c) = (a + b + c) == 1000

answer = a*b*c where (a,b,c) = match
test = answer == 31875000