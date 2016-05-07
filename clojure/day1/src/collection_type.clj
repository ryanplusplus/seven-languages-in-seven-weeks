(ns collection-type)

(defn of [c]
  (cond
    (instance? (class []) c) :vector
    (instance? (class {}) c) :map
    (instance? (class `()) c) :list
    (instance? (class `(1)) c) :list
    (instance? (class `(1 2)) c) :list))
