Decimals
========

module for working with integers as base 10 numbers

> module Lib.Decimal where
> import Char


toDigits
--------

converts an integer into a list of its digits

> toDigits :: Integer -> [Int]
> toDigits x = map digitToInt (show x)

> testToDigits = toDigits 12345 == [1,2,3,4,5]

> fromDigits :: [Int] -> Integer
> fromDigits = (\x -> toInteger(foldl addDigit 0 x))
>     where addDigit n d = 10 * n + d

> testFromDigits = fromDigits [5,3,6,8] == 5368

Binary
------

converts a decimal number to a list representing a binary number
http://snipplr.com/view/11807/convert-decimal-to-binary-in-haskell/

> decToBin x = reverse $ decToBin' x
>     where
>     decToBin' 0 = []
>     decToBin' y = let (a,b) = quotRem y 2 in [b] ++ decToBin' a

> testDecToBin = [1,0,1] == decToBin 5

module test
-----------

> testModule = testToDigits && testFromDigits && testDecToBin
