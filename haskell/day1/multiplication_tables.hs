-- Write a list comprehension to build a childhood multiplication table. The table
-- would be alist of three-tuples where the first wto are integers from 1-12 and
-- the third is a product of the first two.

module Main (multiplicationTable) where
  numbers = [1..12]
  multiplicationTable =
    [(x, y, x * y) | x <- numbers, y <- numbers]
