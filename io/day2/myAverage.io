List myAverage := method(
  if((self size) > 0,
    (self sum) / (self size),
    nil
  )
)

list(1, 2, 3) myAverage println // 2
list() myAverage println // nil
list("a", 1, 2) myAverage println // exception
