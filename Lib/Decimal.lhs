Decimals
========

module for working with integers as base 10 numbers

> module Lib.Decimal where
> import Char


toDigits
--------

converts an integer into a list of its digits

> toDigits :: Integer -> [Int]
> toDigits x = toDigits' (show x)
>     where
>     toDigits' :: [Char] -> [Int] 
>     toDigits' [] = [] 
>     toDigits' (y:ys) = (digitToInt y) : (toDigits' ys)    

> testtoDigits = toDigits 12345 == [1,2,3,4,5]


module test
-----------

> testDecimal = testtoDigits