; Use refs to create a vector of accounts in memory. Create debit and credit functions
; to change the balance of an account.

(ns account)

(def ^:private accounts (ref []))

(defn open []
  (dosync
    (alter accounts #(conj % 0))
  )
  (dec (count @accounts))
)

(defn balance [account-number]
  (get @accounts account-number)
)

(defn credit [account-number amount]
  (dosync
    (alter accounts
      #(assoc % account-number (+ (get % account-number) amount))
    )
  )
)

(defn debit [account-number amount]
  (credit account-number (- amount))
)
