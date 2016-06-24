-- Write a function that takes an argument x and returns a lazy sequence that
-- has every third number, starting with x. Then, write a function that includes
-- every fifth number, beginning with y. Combine these functions through
-- composition to return every eighth number, beginning with x + y.

module Main where
  everyThird :: Integer -> [Integer]
  everyThird x = x : everyThird (x + 3)

  everyFifth :: Integer -> [Integer]
  everyFifth x = x : everyFifth (x + 5)

  -- Doesn't work. The types don't match up so I don't see how you could possibly
  -- use composition here...
  -- everyEighth :: Integer -> [Integer]
  -- everyEighth = everyThird . everyFifth
