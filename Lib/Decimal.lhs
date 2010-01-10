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


module test
-----------

> testDecimal = testToDigits
