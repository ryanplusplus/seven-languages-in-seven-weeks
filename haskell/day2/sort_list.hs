-- Write a sort that takes a list and returns a sorted list.

module Main where
  import Data.List

  sortList [] = []
  sortList xs = minx:(sortList (delete minx xs))
    where minx = minimum xs
