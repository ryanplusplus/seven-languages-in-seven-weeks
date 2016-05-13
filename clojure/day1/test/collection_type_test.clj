(ns collection-type-test
  (:require [clojure.test :refer [deftest is]]
            collection-type))

(deftest empty-list-test
  (is (= :list (collection-type/of '()))))

(deftest singleton-list-test
  (is (= :list (collection-type/of '(1)))))

(deftest list-test
  (is (= :list (collection-type/of '(1 2 3)))))

(deftest empty-map-test
  (is (= :map (collection-type/of {}))))

(deftest singleton-map-test
  (is (= :map (collection-type/of {:a 1}))))

(deftest map-test
  (is (= :map (collection-type/of {:a 1, :b 2, :c 3}))))

(deftest empty-vector-test
  (is (= :vector (collection-type/of []))))

(deftest singleton-vector-test
  (is (= :vector (collection-type/of [1]))))

(deftest vector-test
  (is (= :vector (collection-type/of [1 2 3]))))
