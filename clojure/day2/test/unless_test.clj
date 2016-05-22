(ns unless-test
  (:require [clojure.test :refer [deftest is]]
            unless))

(defn ^:private do-not-eval []
  (throw (Exception. "oops")))

(deftest unless-without-else
  (is (= 3 (unless/unless false 3)))
  (is (= nil (unless/unless true (do-not-eval)))))

(deftest unless-with-else
  (is (= 3 (unless/unless false 3 (do-not-eval))))
  (is (= 5 (unless/unless true (do-not-eval) 5))))
