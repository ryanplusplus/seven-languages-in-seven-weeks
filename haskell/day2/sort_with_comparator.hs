-- Write a sort that takes a list and a function that compares its two arguments
-- and then returns a sorted list.

module Main where
  import Data.List

  sortByComparator :: Eq a => [a] -> (a -> a -> Integer) -> [a]
  sortByComparator [] comparator = []
  sortByComparator xs comparator = minx:(sortByComparator (delete minx xs) comparator)
    where
      minx = foldl minByComparator (head xs) xs
      minByComparator x minx =
        if (comparator x minx) < 0
          then x
          else minx
