(ns foo)

(defprotocol Foo
  (bar [foo, x])
  (baz [foo]))

(defrecord ConcreteFoo [s]
  Foo
  (bar [_, x] (ConcreteFoo. (str s x)))
  (baz [_] s))
