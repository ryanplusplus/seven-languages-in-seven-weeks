; Implement a function called (big st n) that returns true if a string st is longer than n characters.

(ns big)

(defn big [s n]
  (> (count s) n))
