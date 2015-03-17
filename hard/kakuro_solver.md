**Title** Kakuro Solver

**Difficulty** Hard

**Description**

Kakuro is a popular Japanese logic puzzle sometimes called a mathematical crossword. The objective of the puzzle is to insert a digit from 1 to 9 inclusive into each white cell such that the sum of the numbers in each entry matches the clue associated with it and that no digit is duplicated in any entry. It is that lack of duplication that makes creating Kakuro puzzles with unique solutions possible. Numbers in cells elsewhere in the grid may be reused.

**Input**

You'll be given a pair of integers showing you the number of columns and rows (respectively) for the game puzzle. Then you'll be given *col* + *row* lines with the sum and the cell identifiers as *col id* and *row number*. 

The puzzle is a 2x3 matrix. Note that it has non-unique solutions.

    2 3 
    7 A1 A2 A3
    9 B1 B2 B3
    3 A1 B1
    6 A2 B2
    7 A3 B3

**Solution**

One possible solution for the above puzzle is

      A  B 
    1 1  2
    2 2  4
    3 4  3