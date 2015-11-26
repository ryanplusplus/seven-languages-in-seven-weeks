fibonacci := Object clone

fibonacci iterative := method(n,
  if(n < 2,
    return n
  )

  a := 1
  b := 1

  for(i, 2, n,
    _b := a + b
    a = b
    b = _b
  )

  b
)

fibonacci recursive := method(n,
  memo := Map with(
    "0", 1,
    "1", 1
  )

  (aux := block(n,
    (memo hasKey(n asString)) ifFalse(
      memo atPut(n asString, aux call(n - 1) + aux call(n - 2))
    )

    memo at(n asString)
  )) call(n)
)

for(i, 0, 20,
  ("i(" .. i asString .. "): " .. fibonacci iterative(i)) println
  ("r(" .. i asString .. "): " .. fibonacci recursive(i)) println
  "" println
)
