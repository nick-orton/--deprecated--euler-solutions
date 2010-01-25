> module Lib.Lizt where
> import Lib.Numz

Select The First Matching
-------------------------
Select the first element that matches a given predicate from a list 
with type Ord.  If no element is found, throw an exception

> fstMatch :: (Ord a) => (a->Bool) -> [a] -> a
> fstMatch _ [] = error "no match found"
> fstMatch p (x:xs) | (p x) = x
>                   | otherwise = fstMatch p xs

Test:  The first element greater than 4 in ℕ is 5

> testfstMatch = fstMatch (>4) nats == 5

Select Until
------------
The Select All function is not as usefull for infinite lists.  If a list has
an order on some characteristic, and we are selecting with a predicate on that 
characteristic, we can select all elements prior to some position.

> selectUntil :: (Ord a) => (a->Bool) -> [a] -> [a]
> selectUntil _ [] = []
> selectUntil c (x:xs) | c x = []
>                      | otherwise = x : selectUntil c xs

> testselectUntil = (selectUntil (>4) nats) == [1..4]

Catesian Product
----------------

The Cartesian product of two infinate sets can be a little funky to compute.
This will use the diagonal method to return a list of pairs of members of the
sets.

> cartesianPairs = up 1 1
>   where
>     up a b 
>       | a == 1 = (a,b) : (down a (b+1))
>       | otherwise = (a,b) : (up (a - 1) (b + 1))
>     down a b
>       | b == 1 = (a,b) : (up (a + 1) b)
>       | otherwise = (a,b) : (down (a + 1) (b - 1))

> testCatesianPairs = (take 8 cartesianPairs)
>                       == [(1,1),(1,2),(2,1),(3,1),(2,2),(1,3),(1,4),(2,3)]

module test
-----------

> testLizt = testfstMatch && testselectUntil
