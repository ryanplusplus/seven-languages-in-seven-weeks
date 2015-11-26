Number oldDiv := Number getSlot("/")
Number / = method(i,
    if(i == 0,
        return 0
    )

    self oldDiv(i)
)

(1 / 2) println
(1 / 1) println
(1 / 0) println
