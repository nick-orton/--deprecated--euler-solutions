(Problem 36)[http://projecteuler.net/index.php?section=problems&id=36]

problem
-------
The decimal number, 585 = 1001001001 (binary), is palindromic in both bases.

Find the sum of all numbers, less than one million, which are palindromic in 
base 10 and base 2.

Please note that the palindromic number, in either base, may not include 
leading zeros.

> module Problem036 where
> import Lib.Decimal

solution
--------

> domain = [1..999999]
> isPalindrome l = l == (reverse l)
> isPalindromeInBoth n = (isPalindrome (toDigits n)) 
>                        && (isPalindrome (decToBin n))

> testIsPalindromeInBoth = (isPalindromeInBoth 585) && not(isPalindromeInBoth 22)


> answerProblem36 = sum(filter isPalindromeInBoth domain)
> testProblem36 = 872187 == answerProblem36
