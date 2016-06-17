-- Write a function that takes a list and returns the same list in reverse

module Main where
  reverseList [] = []
  reverseList (h:t) = (reverseList t) ++ [h]
