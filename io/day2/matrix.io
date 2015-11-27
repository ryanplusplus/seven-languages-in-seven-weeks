Matrix := Object clone do(
  dim := method(x, y,
    m := Matrix clone

    row := list()
    for(_, 1, x,
      row append(nil)
    )

    m _rows := list()
    for(_, 1, y,
      m _rows append(row clone)
    )

    m
  )

  get := method(x, y,
    self _rows at(x) at(y)
  )

  set := method(x, y, value,
    self _rows at(x) atPut(y, value)
    self
  )

  rowCount := method(
    _rows size
  )

  columnCount := method(
    _rows at(0) size
  )

  transpose := method(
    transposed := Matrix dim(rowCount, columnCount)

    for(x, 0, rowCount - 1,
      for(y, 0, columnCount - 1,
        transposed set(y, x, self get(x, y))
      )
    )

    transposed
  )

  toFile := method(filename,
    File remove(filename)

    out := File open(filename)
    out write(serialized)
    out close

    self
  )

  fromFile := method(filename,
    doFile(filename)
  )
)

# Should be able to create multiple independent matrices
m1 := Matrix dim(3, 4)
m2 := Matrix dim(3, 4)

m1 set(1, 2, 4)
m1 get(1, 2) println // 4
m2 get(1, 2) println // nil

# Should be able to transpose a matrix
m1t := m1 transpose
m1t get(2, 1) println // 4

# Should be able to write a matrix to a file and read a matrix from a file
m1 toFile("m1.serialized")
Matrix fromFile("m1.serialized") get(1, 2) println // 4
