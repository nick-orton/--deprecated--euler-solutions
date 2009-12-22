(Problem15)[http://projecteuler.net/index.php?section=problems&id=15]

problem
-------
How many routes are there through a 20 x 20 grid?

> module Project015 where
> import Lib.Pascal
> import Lib.Numz

solution
--------

There are 2 routes on a unit square from the top left corner to the bottom
right. The number of ways to get to the bottom right vertex from any other
is shown below

21
11

There are 6 routes through a 2 x 2 square.

6 3 1
3 2 1
1 1 1

The value for any vertice is the sum of the vertex adjecent to the left
and adjectent below.  This resembles the famous 
(Pascal's Triangle)[http://en.wikipedia.org/wiki/Pascal's_triangle]. 

Rotating the 2 x 2 we get:

1:   1
2:  1 1
3: 1 2 1
4:  3 3
5:   6

The solution for a square of size n x n is the largest value in the row 2n - 1
of pascal's triangle.

> n = 20
> row = nth_row_triangle ((2 * n) - 1)
> answer = lgst row 1
> testProblem = answer == 137846528820








