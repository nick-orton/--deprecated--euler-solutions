(Problem 4)[http://projecteuler.net/index.php?section=problems&id=4]

> module Problem004 where
> import Lib.Lizt(fstMatch)

problem
-------

A palindromic number reads the same both ways. 

> isPal :: Integer -> Bool
> isPal x = s == reverse(s) where s = show x

The largest palindrome made from the product of two 2-digit numbers is 
9009 = 91 × 99.

> testisPal = isPal 9009

Find the largest palindrome made from the product of two 3-digit numbers.

solution
--------

first gather a list of the largest products of 3 digit numbers in 
descending order

> mult :: [Integer] -> [Integer] -> [Integer]
> mult xs ys = [x * y | x <- xs, y <- ys]
> products = (mult [999,998..900] [999,998..900])

the answer is first of the products that is a palindrome

> answerProblem004 = fstMatch isPal products
> testProblem004 = (answerProblem004 == 906609) && testisPal
