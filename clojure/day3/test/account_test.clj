(ns account-test
  (:require
    [clojure.test :refer [deftest is]]
    [account :refer :all]))

(deftest should-start-with-zero-balance
  (is (= 0 (account/balance (account/open)))))

(deftest should-allow-cash-to-be-credited-to-an-account
  (let [acct (account/open)]
    (account/credit acct 15)
    (is (= 15 (account/balance acct)))
    (account/credit acct 7)
    (is (= 22 (account/balance acct)))
  )
)

(deftest should-allow-cash-to-be-debited-from-an-account
  (let [acct (account/open)]
    (account/debit acct 15)
    (is (= -15 (account/balance acct)))
    (account/debit acct 7)
    (is (= -22 (account/balance acct)))
  )
)
