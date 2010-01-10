> module Lib.Lizt where
> import Lib.Numz

Select All
----------

> select _ [] = []
> select c (x:xs) | c x = x : select c xs
>                 | otherwise = select c xs

> testselect = [2,4,6,8] == select even [1..9]

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
The Select All function is not as usefull for infinate lists.  If a list has
an order on some characteristic, and we are selecting on that characteristic,
we can use the order to stop our selection at some point.

> selectUntil :: (Ord a) => (a->Bool) -> [a] -> [a]
> selectUntil _ [] = []
> selectUntil c (x:xs) | c x = []
>                      | otherwise = x : selectUntil c xs

> testselectUntil = (selectUntil (>4) nats) == [1..4]

module test
-----------

> testLizt = testfstMatch && testselect
