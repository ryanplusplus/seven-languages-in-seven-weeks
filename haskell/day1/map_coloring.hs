-- Solve the map-coloring problem [Section 4.2, Map coloring, on page 87] using
-- Haskell.

module Main (mapColoring) where
  colors = ["red", "green", "blue"]
  mapColoring =
    [
      (["MS", ms], ["TN", tn], ["AL", al], ["GA", ga], ["FL", fl]) |
      ms <- colors,
      tn <- colors,
      al <- colors,
      ga <- colors,
      fl <- colors,
      fl /= ga,
      fl /= al,
      al /= ga,
      al /= ms,
      al /= tn,
      ms /= tn,
      ga /= tn
    ]
