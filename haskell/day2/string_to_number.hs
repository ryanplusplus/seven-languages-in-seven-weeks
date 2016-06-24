-- Write a Haskell function to convert a string to a number. The string
-- should be in the form of $2,345,678.99 and can possibly have leading
-- zeros.

module Main where
  stringToNumber s = aux s 0
    where
      aux [] acc = acc
      aux (h:t) acc
        | h == '$' = aux t acc
        | h == ',' = aux t acc
        | h == '.' = acc + (read ("0." ++ t) :: Float)
        | otherwise = aux t (acc * 10 + (read [h] :: Float))
