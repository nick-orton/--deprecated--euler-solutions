Functions for Dealing with Pascal's Triangle

> module Lib.Pascal where

Generate the next row of the triangle given a list 
representing the current row.  This is done by pushing 
each number down and to the left.

> test_next_row = (next_row [1,2,1]) == [1,3,3,1]

> next_row :: [Integer] -> [Integer]
> next_row ts = next_row' ts [0]
>             where
>             next_row' [] bs = bs
>             next_row' (t:ts) (b:bs) = next_row' ts (t:t+b:bs)


> nth_row_triangle :: Integer -> [Integer]
> nth_row_triangle n = nth [0..n] [1]
>                    where 
>                    nth [] r = r
>                    nth (x:xs) r = nth xs (next_row r)
