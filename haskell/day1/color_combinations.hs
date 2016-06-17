-- Write a function that builds two-tuples with all possible combinations of two
-- of the colors black, white, blue, yellow, and red. Note that you should include
-- only one of `(black, blue)` and `(blue, black)`

module Main (colorCombinations) where
  colors = ["black", "white", "blue", "yellow", "red"]
  colorCombinations = [(c1, c2) | c1 <- colors, c2 <- colors, c1 < c2]
