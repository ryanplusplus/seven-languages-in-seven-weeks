(ns big-test
  (:require [clojure.test :refer [deftest is]]
            big))

(deftest less-than-test
  (is (= false (big/big "hello" 6))))

(deftest equal-to-test
  (is (= false (big/big "goodbye" 7))))

(deftest greater-than-test
  (is (= true (big/big "clojure" 6))))
