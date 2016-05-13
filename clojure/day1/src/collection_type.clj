(ns collection-type)

(defn of [c]
  (cond
    (list? c) :list
    (map? c) :map
    (vector? c) :vector))
