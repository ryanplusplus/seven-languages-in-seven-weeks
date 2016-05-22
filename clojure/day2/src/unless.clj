; Implement an unless with an else condition using macros.

(ns unless)

(defmacro unless
  ([test body]
    (list 'if (list 'not test) body))
  ([test if-false if-true]
    (list 'if (list 'not test) if-false if-true)))
