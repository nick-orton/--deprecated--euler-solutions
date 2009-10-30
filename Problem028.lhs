(Problem 28)[http://projecteuler.net/index.php?section=problems&id=28]

problem
-------
Starting with the number 1 and moving to the right in a clockwise direction a 5 by 5 spiral is formed as follows:

21 22 23 24 25
20  7  8  9 10
19  6  1  2 11
18  5  4  3 12
17 16 15 14 13

It can be verified that the sum of the numbers on the diagonals is 101.
What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral formed in the same way?

> module Problem029 where
> import List

solution
--------
call a 5 by 5 size square a Square(5)

in Spiral(n) the sequentially generated outmost diagonals are different by n-1
the last outmost diagonal of the square is n^2
there are 4 outmost diagonal numbers on a spiral
the next smallest spiral of Spiral(n) is Spiral(n-2)
the smalles spiral is the number n by itself

> diags :: Int -> [Int]
> diags 1 = [1]
> diags n = last : last - diff : last - 2*diff : last - 3*diff : (diags (n-2))
>   where 
>       last = n^2 
>       diff = n-1

> answerProblem028 = sum(diags 1001)
> testProblem028 = 669171001 == answerProblem028
