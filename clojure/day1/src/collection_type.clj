; Write a function called (collection-type col) that returns :list , :map , or :vector based on the type of collection col .

(ns collection-type)

(defn of [c]
  (cond
    (list? c) :list
    (map? c) :map
    (vector? c) :vector))
