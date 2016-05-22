(ns foo-test
  (:require
    [clojure.test :refer [deftest is]]
    [foo :refer :all])
  (:import
    (foo ConcreteFoo)))

(deftest baz-should-return-the-current-string
  (is (= "hello" (baz (ConcreteFoo. "hello"))))
  (is (= "goodbye" (baz (ConcreteFoo. "goodbye")))))

(deftest bar-should-add-to-the-current-string
  (is (= "hellogoodbye" (baz (bar (ConcreteFoo. "hello") "goodbye")))))
