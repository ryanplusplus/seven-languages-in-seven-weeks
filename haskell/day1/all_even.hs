-- How many different ways can you find to write allEven?

module Main where
  allEven1 :: [Integer] -> [Integer]
  allEven1 [] = []
  allEven1 (h:t) = if even h then h:allEven1 t else allEven1 t

  allEven2 :: [Integer] -> [Integer]
  allEven2 xs = [x | x <- xs, even x]

  allEven3 :: [Integer] -> [Integer]
  allEven3 xs = filter even xs
